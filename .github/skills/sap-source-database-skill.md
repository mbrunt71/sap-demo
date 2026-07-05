# Skill: SAP Source Database Generator

## Doel
Genereer een SAP bron-database in Snowflake op basis van de SAP Data Dictionary (DDIC) metadata. Deze skill gebruikt de DD (Data Dictionary) bestanden om de structuur te definiëren.


## SAP Data Dictionary (DDIC) Tabellen

Tabellen die beginnen met DD behoren tot de SAP Data Dictionary. Ze bevatten metadata over het SAP datamodel: niet de business data zelf, maar de definities van domains, tabellen, velden, datatypes en relaties.

**Status**: Alle 9 DD-tabellen zijn volledig gevuld en bevatten metadata voor alle 156 SAP-tabellen :

| DD Tabel | Beschrijving |
|----------|-------------|
| DD01L | Domains | 
| DD02L | SAP Tables | 
| DD02T | SAP Tables text | 
| DD03L | Table Fields | 
| DD03T | Table Fields text |
| DD04L | Data elements | 
| DD04T | Data elements text |
| DD05S | Foreign Key Relationships |
| DD07L | Values for the domains | 


## Instructies voor database-generatie

### Stap 1: Maak de database en schema aan
```sql
CREATE DATABASE IF NOT EXISTS SAP;
CREATE SCHEMA IF NOT EXISTS SAP_ECC;
```

### Stap 2: Laad de DD CSV bestanden als Snowflake tabellen
Gebruik de CSV bestanden uit `sap/dd/` om de Data Dictionary tabellen te laden

```sql
-- Voorbeeld: DD02L laden
CREATE OR REPLACE TABLE SAP.SAP_ECC.DD02L (
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
Gebruik DD03L (velddefinities) om per SAP tabel de Snowflake CREATE TABLE te genereren inclusief Primary keys. Map SAP datatypes naar Snowflake:

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
Gebruik DD05S (Foreign Key Relationships) om relaties te definiëren.

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
