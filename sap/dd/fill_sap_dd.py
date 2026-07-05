#!/usr/bin/env python3
"""Populate SAP Data Dictionary CSV files from LeanX table-definition pages."""

from __future__ import annotations

import argparse
import csv
import sys
from pathlib import Path
from typing import Dict, List, Optional, Sequence, Tuple
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

DEFAULT_TIMEOUT = 30
HEADERS = {"User-Agent": "Mozilla/5.0"}


def ensure_output_files(reset: bool = True) -> None:
    for path in DD_FILES.values():
        if reset or not path.exists():
            with path.open("w", encoding="utf-8", newline="") as handle:
                writer = csv.writer(handle)
                writer.writerow(DD_COLUMNS[path.stem])


def _extract_text(cell: Optional[object]) -> str:
    if cell is None:
        return ""
    return " ".join(cell.get_text(" ", strip=True).split())


def _clean_value(value: str) -> str:
    return " ".join(value.replace("\xa0", " ").split())


def fetch_table_page(table_name: str) -> Tuple[str, str]:
    search_url = f"https://leanx.eu/sap/table/search/?searchsaptable={quote(table_name)}"
    search_response = requests.get(search_url, timeout=DEFAULT_TIMEOUT, headers=HEADERS)
    search_response.raise_for_status()

    soup = BeautifulSoup(search_response.text, "html.parser")
    detail_candidates = []
    for anchor in soup.find_all("a", href=True):
        href = anchor["href"]
        if f"/sap/table/{table_name.lower()}/" in href or f"/sap/table/{table_name}/" in href:
            detail_candidates.append(href)

    detail_urls = [
        f"https://leanx.eu/sap/table/{table_name.lower()}/",
        f"https://leanx.eu/sap/table/{table_name}/",
        *detail_candidates,
    ]

    for detail_url in detail_urls:
        if not detail_url:
            continue
        try:
            detail_response = requests.get(detail_url, timeout=DEFAULT_TIMEOUT, headers=HEADERS)
            if detail_response.ok:
                return detail_response.text, detail_url
        except requests.RequestException:
            continue

    raise RuntimeError(f"Unable to reach a LeanX detail page for {table_name}")


def parse_table_page(html: str, table_name: str) -> Dict[str, List[Dict[str, str]]]:
    soup = BeautifulSoup(html, "html.parser")
    text = _clean_value(" ".join(soup.get_text(" ", strip=True).split()))

    rows: Dict[str, List[Dict[str, str]]] = {name: [] for name in DD_FILES}

    rows["DD02L"].append(
        {
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
    )
    rows["DD02T"].append(
        {
            "TABNAME": table_name,
            "AS4LOCAL": "A",
            "AS4VERS": "0000",
            "DDLANGUAGE": "D",
            "DDTEXT": text[:200] if text else table_name,
        }
    )

    field_rows: List[Dict[str, str]] = []
    for table in soup.find_all("table"):
        headers = [_clean_value(_extract_text(th)).lower() for th in table.find_all("th")]
        if not headers:
            continue
        if not any(header in headers for header in ["field", "data element", "datatype", "length"]):
            continue

        for row in table.find_all("tr"):
            cells = [_clean_value(_extract_text(cell)) for cell in row.find_all(["th", "td"])]
            if not cells:
                continue
            if len(cells) < 4:
                continue

            field_name = cells[0]
            if not field_name or field_name.lower() in {"field", "field name", "fieldname"}:
                continue

            data_element = cells[1] if len(cells) > 1 else ""
            checktable = cells[2] if len(cells) > 2 else ""
            datatype = cells[3] if len(cells) > 3 else ""
            length = cells[4] if len(cells) > 4 else ""
            decimals = cells[5] if len(cells) > 5 else ""
            if not datatype:
                continue

            field_rows.append(
                {
                    "FIELDNAME": field_name.split()[0] if field_name else "",
                    "DATATYPE": datatype,
                    "LENG": length,
                    "DECIMALS": decimals,
                    "DOMNAME": data_element or field_name,
                    "ROLLNAME": data_element or field_name,
                    "CHECKTABLE": checktable,
                }
            )

    if field_rows:
        for index, field_row in enumerate(field_rows, start=1):
            rows["DD03L"].append(
                {
                    "TABNAME": table_name,
                    "FIELDNAME": field_row["FIELDNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "POSITION": str(index),
                    "KEYFLAG": "X" if index == 1 else "",
                    "DATATYPE": field_row["DATATYPE"],
                    "LENG": field_row["LENG"],
                    "DECIMALS": field_row["DECIMALS"],
                    "DOMNAME": field_row["DOMNAME"],
                    "ROLLNAME": field_row["ROLLNAME"],
                }
            )
            rows["DD03T"].append(
                {
                    "TABNAME": table_name,
                    "FIELDNAME": field_row["FIELDNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "DDLANGUAGE": "D",
                    "DDTEXT": field_row["FIELDNAME"],
                }
            )
            rows["DD05S"].append(
                {
                    "TABNAME": table_name,
                    "FIELDNAME": field_row["FIELDNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "FORTABLE": "",
                    "FORKEY": "",
                    "CHECKTABLE": field_row["CHECKTABLE"],
                    "CHECKFIELD": field_row["FIELDNAME"],
                }
            )
            rows["DD01L"].append(
                {
                    "DOMNAME": field_row["DOMNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "DDLANGUAGE": "D",
                    "DATATYPE": field_row["DATATYPE"],
                    "LENG": field_row["LENG"],
                    "OUTPUTLEN": field_row["LENG"],
                    "DECIMALS": field_row["DECIMALS"],
                    "SIGNFLAG": "",
                }
            )
            rows["DD04L"].append(
                {
                    "ROLLNAME": field_row["ROLLNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "DOMNAME": field_row["DOMNAME"],
                    "DATATYPE": field_row["DATATYPE"],
                    "LENG": field_row["LENG"],
                    "OUTPUTLEN": field_row["LENG"],
                    "DECIMALS": field_row["DECIMALS"],
                    "SIGNFLAG": "",
                }
            )
            rows["DD04T"].append(
                {
                    "ROLLNAME": field_row["ROLLNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "DDLANGUAGE": "D",
                    "DDTEXT": field_row["FIELDNAME"],
                }
            )
            rows["DD07L"].append(
                {
                    "DOMNAME": field_row["DOMNAME"],
                    "AS4LOCAL": "A",
                    "AS4VERS": "0000",
                    "VALPOS": str(index),
                    "DDLANGUAGE": "D",
                    "VALUE": "",
                    "DDTEXT": "",
                }
            )
    else:
        rows["DD03L"].append(
            {
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
        )
        rows["DD03T"].append(
            {
                "TABNAME": table_name,
                "FIELDNAME": "MANDT",
                "AS4LOCAL": "A",
                "AS4VERS": "0000",
                "DDLANGUAGE": "D",
                "DDTEXT": "Client",
            }
        )
        rows["DD01L"].append(
            {
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
        )
        rows["DD04L"].append(
            {
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
        )
        rows["DD04T"].append(
            {
                "ROLLNAME": "",
                "AS4LOCAL": "A",
                "AS4VERS": "0000",
                "DDLANGUAGE": "D",
                "DDTEXT": "",
            }
        )
        rows["DD05S"].append(
            {
                "TABNAME": table_name,
                "FIELDNAME": "MANDT",
                "AS4LOCAL": "A",
                "AS4VERS": "0000",
                "FORTABLE": "",
                "FORKEY": "",
                "CHECKTABLE": "",
                "CHECKFIELD": "",
            }
        )
        rows["DD07L"].append(
            {
                "DOMNAME": "MANDT",
                "AS4LOCAL": "A",
                "AS4VERS": "0000",
                "VALPOS": "1",
                "DDLANGUAGE": "D",
                "VALUE": "",
                "DDTEXT": "",
            }
        )

    return rows


def append_rows(rows: Dict[str, List[Dict[str, str]]]) -> None:
    for dd_name, row_list in rows.items():
        path = DD_FILES[dd_name]
        with path.open("a", encoding="utf-8", newline="") as handle:
            writer = csv.DictWriter(handle, fieldnames=DD_COLUMNS[dd_name])
            for row in row_list:
                writer.writerow(row)


def load_table_names(tables: Optional[Sequence[str]] = None, input_file: Optional[Path] = None) -> List[str]:
    if tables:
        return [table.strip().upper() for table in tables if table and table.strip()]
    if input_file and input_file.exists():
        names = []
        with input_file.open("r", encoding="utf-8") as handle:
            for line in handle:
                line = line.strip()
                if not line or line.startswith("#"):
                    continue
                names.extend(part.strip().upper() for part in line.replace(",", " ").split() if part.strip())
        return names
    raise ValueError("Provide --tables or --input-file")


def main() -> None:
    parser = argparse.ArgumentParser(description="Populate SAP DD CSV files from LeanX pages")
    parser.add_argument("--tables", nargs="+", help="One or more SAP table names")
    parser.add_argument("--input-file", type=Path, help="Optional text file with one SAP table name per line")
    args = parser.parse_args()

    try:
        tables = load_table_names(args.tables, args.input_file)
    except ValueError as exc:
        parser.error(str(exc))

    ensure_output_files(reset=True)

    for table in tables:
        print(f"Processing {table}...")
        try:
            html, _detail_url = fetch_table_page(table)
            rows = parse_table_page(html, table)
            append_rows(rows)
            print(f"Wrote DDIC rows for {table}")
        except Exception as exc:  # pragma: no cover - CLI robustness
            print(f"Failed for {table}: {exc}", file=sys.stderr)

    print("Done")


if __name__ == "__main__":
    main()
