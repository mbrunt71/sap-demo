#!/usr/bin/env python3
"""Populate SAP Data Dictionary CSV files from LeanX table-definition pages.

This script is intentionally pragmatic: it fetches a LeanX table-search page for
one or more SAP table names, extracts whatever structured information is available,
and writes it to the standard DDIC-style CSV files under sap/dd/.

It is designed to be extended with a more detailed parser for the LeanX HTML
structure if the site exposes richer metadata.
"""

from __future__ import annotations

import argparse
import csv
import os
import sys
from pathlib import Path
from typing import Dict, List
from urllib.parse import quote

import requests
from bs4 import BeautifulSoup

ROOT = Path(__file__).resolve().parent
OUTPUT_DIR = ROOT

DD_FILES = {
    "DD01L": OUTPUT_DIR / "DD01L.csv",
    "DD02L": OUTPUT_DIR / "DD02L.csv",
    "DD02T": OUTPUT_DIR / "DD02T.csv",
    "DD03L": OUTPUT_DIR / "DD03L.csv",
    "DD03T": OUTPUT_DIR / "DD03T.csv",
    "DD04L": OUTPUT_DIR / "DD04L.csv",
    "DD04T": OUTPUT_DIR / "DD04T.csv",
    "DD05S": OUTPUT_DIR / "DD05S.csv",
    "DD07L": OUTPUT_DIR / "DD07L.csv",
}

DD_COLUMNS = {
    "DD01L": ["DOMNAME", "AS4LOCAL", "AS4VERS", "DDLANGUAGE", "DATATYPE", "LENG", "OUTPUTLEN", "DECIMALS", "SIGNFLAG"],
    "DD02L": ["TABNAME", "AS4LOCAL", "AS4VERS", "TABCLASS", "SQLTAB", "AUTHCLASS", "MASTERLANG", "CONTFLAG", "MATEFLAG", "BUFFERED", "EXCLASS"],
    "DD02T": ["TABNAME", "AS4LOCAL", "AS4VERS", "DDLANGUAGE", "DDTEXT"],
    "DD03L": ["TABNAME", "FIELDNAME", "AS4LOCAL", "AS4VERS", "POSITION", "KEYFLAG", "DATATYPE", "LENG", "DECIMALS", "DOMNAME", "ROLLNAME"],
    "DD03T": ["TABNAME", "FIELDNAME", "AS4LOCAL", "AS4VERS", "DDLANGUAGE", "DDTEXT"],
    "DD04L": ["ROLLNAME", "AS4LOCAL", "AS4VERS", "DOMNAME", "DATATYPE", "LENG", "OUTPUTLEN", "DECIMALS", "SIGNFLAG"],
    "DD04T": ["ROLLNAME", "AS4LOCAL", "AS4VERS", "DDLANGUAGE", "DDTEXT"],
    "DD05S": ["TABNAME", "FIELDNAME", "AS4LOCAL", "AS4VERS", "FORTABLE", "FORKEY", "CHECKTABLE", "CHECKFIELD"],
    "DD07L": ["DOMNAME", "AS4LOCAL", "AS4VERS", "VALPOS", "DDLANGUAGE", "VALUE", "DDTEXT"],
}


def ensure_output_files() -> None:
    for path in DD_FILES.values():
        if not path.exists():
            with path.open("w", encoding="utf-8", newline="") as handle:
                writer = csv.writer(handle)
                writer.writerow(DD_COLUMNS[path.stem])


def fetch_table_page(table_name: str) -> str:
    url = f"https://leanx.eu/sap/table/search/?searchsaptable={quote(table_name)}"
    response = requests.get(url, timeout=30)
    response.raise_for_status()
    return response.text


def parse_table_page(html: str, table_name: str) -> Dict[str, List[Dict[str, str]]]:
    soup = BeautifulSoup(html, "html.parser")
    text = " ".join(soup.get_text(" ", strip=True).split())

    rows: Dict[str, List[Dict[str, str]]] = {name: [] for name in DD_FILES}

    dd02l_row = {
        "TABNAME": table_name,
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "TABCLASS": "TRANSP",
        "SQLTAB": table_name,
        "AUTHCLASS": "00",
        "MASTERLANG": "D",
        "CONTFLAG": "A",
        "MATEFLAG": "",
        "BUFFERED": "",
        "EXCLASS": "",
    }
    rows["DD02L"].append(dd02l_row)

    dd02t_row = {
        "TABNAME": table_name,
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "DDLANGUAGE": "D",
        "DDTEXT": text[:200] if text else table_name,
    }
    rows["DD02T"].append(dd02t_row)

    # Minimal field extraction from plain text. If the page exposes tables,
    # this can be enhanced later; for now we write a single placeholder record.
    dd03l_row = {
        "TABNAME": table_name,
        "FIELDNAME": "MANDT",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "POSITION": "1",
        "KEYFLAG": "X",
        "DATATYPE": "CLNT",
        "LENG": "3",
        "DECIMALS": "0",
        "DOMNAME": "MANDT",
        "ROLLNAME": "",
    }
    rows["DD03L"].append(dd03l_row)

    dd03t_row = {
        "TABNAME": table_name,
        "FIELDNAME": "MANDT",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "DDLANGUAGE": "D",
        "DDTEXT": "Client",
    }
    rows["DD03T"].append(dd03t_row)

    dd01l_row = {
        "DOMNAME": "MANDT",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "DDLANGUAGE": "D",
        "DATATYPE": "CLNT",
        "LENG": "3",
        "OUTPUTLEN": "3",
        "DECIMALS": "0",
        "SIGNFLAG": "",
    }
    rows["DD01L"].append(dd01l_row)

    dd04l_row = {
        "ROLLNAME": "",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "DOMNAME": "MANDT",
        "DATATYPE": "CLNT",
        "LENG": "3",
        "OUTPUTLEN": "3",
        "DECIMALS": "0",
        "SIGNFLAG": "",
    }
    rows["DD04L"].append(dd04l_row)

    dd04t_row = {
        "ROLLNAME": "",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "DDLANGUAGE": "D",
        "DDTEXT": "",
    }
    rows["DD04T"].append(dd04t_row)

    dd05s_row = {
        "TABNAME": table_name,
        "FIELDNAME": "MANDT",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "FORTABLE": "",
        "FORKEY": "",
        "CHECKTABLE": "",
        "CHECKFIELD": "",
    }
    rows["DD05S"].append(dd05s_row)

    dd07l_row = {
        "DOMNAME": "MANDT",
        "AS4LOCAL": "A",
        "AS4VERS": "0000",
        "VALPOS": "1",
        "DDLANGUAGE": "D",
        "VALUE": "",
        "DDTEXT": "",
    }
    rows["DD07L"].append(dd07l_row)

    return rows


def append_rows(table_name: str, rows: Dict[str, List[Dict[str, str]]]) -> None:
    for dd_name, row_list in rows.items():
        path = DD_FILES[dd_name]
        with path.open("a", encoding="utf-8", newline="") as handle:
            writer = csv.DictWriter(handle, fieldnames=DD_COLUMNS[dd_name])
            for row in row_list:
                writer.writerow(row)


def main() -> None:
    parser = argparse.ArgumentParser(description="Populate SAP DD CSV files from LeanX pages")
    parser.add_argument("--tables", nargs="+", help="One or more SAP table names")
    args = parser.parse_args()

    if not args.tables:
        parser.error("Provide at least one --tables entry")

    ensure_output_files()

    for table in args.tables:
        print(f"Processing {table}...")
        try:
            html = fetch_table_page(table)
            rows = parse_table_page(html, table)
            append_rows(table, rows)
            print(f"Wrote placeholder DDIC rows for {table}")
        except Exception as exc:  # pragma: no cover - CLI robustness
            print(f"Failed for {table}: {exc}", file=sys.stderr)

    print("Done")


if __name__ == "__main__":
    main()
