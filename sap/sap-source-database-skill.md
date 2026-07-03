# Skill: SAP Source Database Generator

## Doel
Genereer een SAP bron-database in Snowflake op basis van de SAP Data Dictionary (DDIC) metadata en het SAP business model. Deze skill bevat de volledige lijst van SAP tabellen en hun relaties, en gebruikt de DD (Data Dictionary) bestanden om de structuur te definiëren.

## Brontabel
De SAP tabellenlijst staat in het bestand: `sap/dd/sap_tables.md` (156 tabellen)

Dit bestand bevat per tabel:
- **SAP_TABLE**: Technische SAP tabelnaam
- **BUSINESS_TABLE**: Business-naam van de tabel
- **PRIMARY_KEY**: Primaire sleutel(s)
- **FOREIGN_KEY_RELATIONS**: Relaties naar andere tabellen



## SAP Data Dictionary (DDIC) Tabellen

Tabellen die beginnen met DD behoren tot de SAP Data Dictionary. Ze bevatten metadata over het SAP datamodel: niet de business data zelf, maar de definities van domains, tabellen, velden, datatypes en relaties.

**Status**: Alle 9 DD-tabellen zijn volledig gevuld en bevatten metadata voor alle 156 SAP-tabellen uit `SAP_BUSINESS_MODEL`:
- DD01L: 88 domeinen | DD02L/DD02T: 160 tabeldefinities | DD03L: 992 velddefinities
- DD03T: 973 veldteksten | DD04L/DD04T: 56 data-elementen | DD05S: 126 foreign keys | DD07L: 87 domeinwaarden

| DD Tabel | Beschrijving | CSV Bestand | Snowflake Tabel |
|----------|-------------|-------------|-----------------|
| DD01L | Domains | sap/dd/DD01L.csv | DEMO.PUBLIC.DD01L |
| DD02L | SAP Tables | sap/dd/DD02L.csv | DEMO.PUBLIC.DD02L |
| DD02T | SAP Tables text | sap/dd/DD02T.csv | DEMO.PUBLIC.DD02T |
| DD03L | Table Fields | sap/dd/DD03L.csv | DEMO.PUBLIC.DD03L |
| DD03T | Table Fields text | sap/dd/DD03T.csv | DEMO.PUBLIC.DD03T |
| DD04L | Data elements | sap/dd/DD04L.csv | DEMO.PUBLIC.DD04L |
| DD04T | Data elements text | sap/dd/DD04T.csv | DEMO.PUBLIC.DD04T |
| DD05S | Foreign Key Relationships | sap/dd/DD05S.csv | DEMO.PUBLIC.DD05S |
| DD07L | Values for the domains | sap/dd/DD07L.csv | DEMO.PUBLIC.DD07L |

## Referentie: leanx.eu
Per SAP tabel kan de definitie opgezocht worden via:
`https://leanx.eu/sap/table/search/?searchsaptable=<SAP_TABLE_NAME>`

## Volledige SAP Tabellenlijst (156 tabellen)

Zie bestand: [`sap/dd/sap_tables.md`](sap/dd/sap_tables.md)

Dit bestand bevat alle 156 SAP-tabellen met hun business-naam, primary keys en foreign key relaties, gegroepeerd in een overzichtelijke tabel.

### Data Dictionary (DDIC)
| SAP Tabel | Business Naam | Primary Key | Foreign Keys |
|-----------|--------------|-------------|--------------|
| DD01L | Domains | DOMNAME, AS4LOCAL, AS4VERS | - |
| DD02L | Table Definition | TABNAME, AS4LOCAL, AS4VERS | - |
| DD02T | Table Definition Text | TABNAME, AS4LOCAL, AS4VERS, DDLANGUAGE | TABNAME, AS4LOCAL, AS4VERS -> DD02L |
| DD03L | Field Definition | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS | TABNAME -> DD02L |
| DD03T | Field Definition Text | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, DDLANGUAGE | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS -> DD03L |
| DD04L | Data Elements | ROLLNAME, AS4LOCAL, AS4VERS | DOMNAME -> DD01L |
| DD04T | Data Elements Text | ROLLNAME, AS4LOCAL, AS4VERS, DDLANGUAGE | ROLLNAME, AS4LOCAL, AS4VERS -> DD04L |
| DD05S | Foreign Key Relationships | TABNAME, FIELDNAME, AS4LOCAL, AS4VERS, FORTABLE | TABNAME -> DD02L; CHECKTABLE -> DD02L |
| DD07L | Domain Values | DOMNAME, AS4LOCAL, AS4VERS, VALPOS, DDLANGUAGE | DOMNAME -> DD01L |

## Instructies voor database-generatie

### Stap 1: Maak de database en schema aan
```sql
CREATE DATABASE IF NOT EXISTS SAP_SOURCE;
CREATE SCHEMA IF NOT EXISTS SAP_SOURCE.RAW;
```

### Stap 2: Laad de DD CSV bestanden als Snowflake tabellen
Gebruik de CSV bestanden uit `sap/dd/` om de Data Dictionary tabellen te laden:

```sql
-- Voorbeeld: DD02L laden
CREATE OR REPLACE TABLE SAP_SOURCE.RAW.DD02L (
    TABNAME VARCHAR(30),
    AS4LOCAL VARCHAR(1),
    AS4VERS VARCHAR(4),
    TABCLASS VARCHAR(8),
    SQLTAB VARCHAR(30),
    AUTHCLASS VARCHAR(2),
    MASTERLANG VARCHAR(1),
    CONTFLAG VARCHAR(1),
    MATEFLAG VARCHAR(1),
    BUFFERED VARCHAR(1),
    EXCLASS VARCHAR(1)
);
```

### Stap 3: Genereer CREATE TABLE statements per SAP tabel
Gebruik DD03L (velddefinities) om per SAP tabel de Snowflake CREATE TABLE te genereren. Map SAP datatypes naar Snowflake:

| SAP Type | Snowflake Type |
|----------|---------------|
| CHAR | VARCHAR(n) |
| NUMC | VARCHAR(n) |
| CLNT | VARCHAR(3) |
| DATS | DATE |
| TIMS | TIME |
| CURR | NUMBER(n,d) |
| QUAN | NUMBER(n,d) |
| DEC | NUMBER(n,d) |
| INT1 | NUMBER(3) |
| INT2 | NUMBER(5) |
| INT4 | NUMBER(10) |
| LANG | VARCHAR(1) |
| UNIT | VARCHAR(3) |
| CUKY | VARCHAR(5) |

### Stap 4: Voeg foreign key constraints toe
Gebruik DD05S (Foreign Key Relationships) of de FOREIGN_KEY_RELATIONS kolom uit SAP_BUSINESS_MODEL om relaties te definiëren.

DD05S bevat per tabel/veld combinatie:
- **TABNAME / FIELDNAME**: De tabel en het veld dat de foreign key bevat
- **FORTABLE / FORKEY**: De referentie-tabel en het referentie-veld
- **CHECKTABLE / CHECKFIELD**: De check-tabel (master) en het check-veld

```sql
-- Voorbeeld: Foreign keys opvragen voor een specifieke tabel
SELECT TABNAME, FIELDNAME, CHECKTABLE, CHECKFIELD
FROM DEMO.PUBLIC.DD05S
WHERE TABNAME = 'EKPO';
```
