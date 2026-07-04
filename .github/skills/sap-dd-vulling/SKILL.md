---
name: sap-dd-vulling
description: Maak een Python-script om SAP Data Dictionary-definities op te halen via LeanX en weg te schrijven naar DDIC-CSV-bestanden.
---

# Skill: SAP DD-vulling via LeanX

## Doel
Maak een Python-script dat de definitie van SAP-tabellen ophaalt via LeanX en deze omzet naar de standaard DDIC-csv-formaten voor:
- DD01L: Domains
- DD02L: SAP Tables
- DD02T: SAP Tables text
- DD03L: Table Fields
- DD03T: Table Fields text
- DD04L: Data elements
- DD04T: Data elements text
- DD05S: Foreign Key Relationships
- DD07L: Values for the domains

## Gebruik
Gebruik deze skill wanneer je SAP-tabeldefinities wilt verzamelen voor een nieuwe set tabellen of wanneer je de DD-csv-bestanden wilt aanvullen.

## Verplicht resultaat
Het script moet:
1. een lijst van SAP-tabellen accepteren
2. per tabel de LeanX-pagina openen via:
   https://leanx.eu/sap/table/search/?searchsaptable=<SAP_TABLE_NAME>
3. de relevante informatie parsen naar DDIC-achtige records
4. de gegevens wegschrijven naar de CSV-bestanden onder sap/dd/

## CSV-outputstructuur
De output moet worden opgeslagen in deze bestanden:
- sap/dd/DD01L.csv
- sap/dd/DD02L.csv
- sap/dd/DD02T.csv
- sap/dd/DD03L.csv
- sap/dd/DD03T.csv
- sap/dd/DD04L.csv
- sap/dd/DD04T.csv
- sap/dd/DD05S.csv
- sap/dd/DD07L.csv

## Aanbevolen aanpak
- Gebruik Python met requests en BeautifulSoup of Selenium wanneer de pagina dynamisch is.
- Maak de CSV’s append-only of overwrite per run.
- Schrijf duidelijke kolomnamen die aansluiten op de DDIC-structuur.
- Gebruik UTF-8 encoding en generieke fallback-waarden wanneer een veld onbekend is.

## Referentiemodel
Het script moet minimaal deze kolommen bevatten:
- DD01L: DOMNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DATATYPE, LENG, OUTPUTLEN, DECIMALS, SIGNFLAG
- DD02L: TABNAME, AS4LOCAL, AS4VERS, TABCLASS, SQLTAB, AUTHCLASS, MASTERLANG, CONTFLAG, MATEFLAG, BUFFERED, EXCLASS
- DD02T: TABNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DDTEXT
- DD03L: TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, POSITION, KEYFLAG, DATATYPE, LENG, DECIMALS, DOMNAME, ROLLNAME
- DD03T: TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DDTEXT
- DD04L: ROLLNAME, AS4LOCAL, AS4VERS, DOMNAME, DATATYPE, LENG, OUTPUTLEN, DECIMALS, SIGNFLAG
- DD04T: ROLLNAME, AS4LOCAL, AS4VERS, DDLANGUAGE, DDTEXT
- DD05S: TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, FORTABLE, FORKEY, CHECKTABLE, CHECKFIELD
- DD07L: DOMNAME, AS4LOCAL, AS4VERS, VALPOS, DDLANGUAGE, VALUE, DDTEXT

## Implementatie-instructie
Genereer een Python-script met de naam:
- sap/dd/fill_sap_dd.py

Het script moet:
- een lijst met SAP-tabellen kunnen laden uit een invoerbestand of een hardcoded lijst
- per tabel de metadata ophalen en in CSV schrijven
- indien de pagina niet toegankelijk is, netjes falen met een duidelijke foutmelding
- een `--tables` argument ondersteunen voor een specifieke subset
