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
- Gebruik Python met requests en BeautifulSoup.
- Open eerst de zoekpagina van LeanX en maak vervolgens gebruik van de detailpagina voor een tabel, bijvoorbeeld https://leanx.eu/sap/table/mseg/.
- Parse de HTML-tabel met de veldlijst die LeanX op de detailpagina aanbiedt, niet alleen de zoekresultatenpagina.
- Extraheer voor elke veldregel de veldnaam, datatype, lengte, decimalen en data element/checktable indien beschikbaar.
- Schrijf duidelijke kolomnamen die aansluiten op de DDIC-structuur.
- Gebruik UTF-8 encoding en generieke fallback-waarden wanneer een veld onbekend is.
- Als de detailpagina geen veldtabel bevat, val dan terug op een minimale fallback-rij zoals MANDT, maar beschouw dit als uitzondering.

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
- per tabel eerst de zoekpagina openen en vervolgens de detailpagina voor die tabel
- de veldtabel van LeanX parsen en meerdere DD03L/DD03T-rijen genereren
- de metadata in CSV schrijven
- indien de pagina niet toegankelijk is, netjes falen met een duidelijke foutmelding
- een `--tables` argument ondersteunen voor een specifieke subset
- de parser zo bouwen dat het werkt voor tabellen zoals MSEG, waarbij LeanX een lange lijst met echte velden exposeert

## Lijst met SAP-tabellen
AFKO
AFPO
AFVC
AFVV
AGR_TEXTS
AGR_USERS
ANEP
ANLA
AUFK
BALDAT
BALHDR
BDCP2
BKPF
BSAD
BSAK
BSAS
BSEG
BSID
BSIK
CDHDR
CDPOS
CE1XXXX
CE2XXXX
COBK
COEP
COSP
COSS
CRHD
CRTX
CSKA
CSKB
CSKS
CSKT
CSKU
DD02L
DD03L
EBAN
EDID4
EDIDC
EINA
EINE
EKBE
EKET
EKKO
EKPO
FAGLFLEXA
HRP1000
HRP1001
HRP1002
INFO
JEST
KEKO
KEPH
KNA1
KNVV
KONV
LAGP
LEIN
LFA1
LFB1
LFM1
LIKP
LIPS
LQUA
LTAK
LTAP
LTBK
LTBP
MAKT
MAPL
MARA
MARC
MARD
MAST
MDKP
MDTB
MKPF
MLCD
MSEG
OBJK
PA0000
PA0001
PA0002
PA0006
PA0007
PA0008
PA0014
PA0015
PA2001
PA2002
PA2006
PBED
PBIM
PLAF
PLKO
PLPO
QMEL
RBKP
RESB
RLGRAP
RSEG
SER01
STKO
STPO
T000
T000T
T001L
T001W
T156
T156T
T161
T161T
T300
T300T
T527X
T529T
T552T
T554T
T556T
T685
T685T
TBDLS
TCURC
TCURT
TCURX
TJ02
TJ02T
TKA01
TKT01
TTDS
TTDST
TVAK
TVAKT
TVAP
TVAPT
TVLK
TVLKT
USR02
VBAK
VBAP
VBEP
VBFA
VBKD
VBPA
VBRK
VBRP
VBUK
VBUP
VFKN
VFKP
VTFA
VTTK
VTTP
VTTS