---
name: sap-ecc-dbt-bronze
description: Genereer dbt bronzemodellen voor SAP ECC-tabellen met bron-source-definities en SCD2-incrementele loading.
---

# Skill: SAP ECC naar dbt bronze met SCD2

## Doel
Maak voor elke SAP-tabel uit de brondatabase SAP.SAP_ECC een dbt-bronze model dat:
- de bron definieert als source met naam sap_ecc
- de bron gebruikt vanuit database SAP en schema SAP_ECC
- een incremental model genereert in de bronze laag
- een SCD2-achtige historie bouwt naar een doeltafel in DWH.BRONZE met prefix HTECC_<table>

## Gebruik
Gebruik deze skill wanneer je een nieuwe set SAP ECC-tabellen wilt laten opnemen in dbt en wilt dat deze als bron zet in de bronze laag.

## Regels
1. Definieer de bron in dbt/models/sources.yml als:
   - source name: sap_ecc
   - database: SAP
   - schema: SAP_ECC
   - table: <SAP_TABEL>

2. Genereer per tabel een dbt model in dbt/models/bronze/ met naam:
   - bestandsnaam: htecc_<table>.sql
   - alias: HTECC_<TABLE>

3. Gebruik voor elk model deze configuratie:
   - materialized: incremental
   - incremental_strategy: merge
   - unique_key: <business_key>
   - on_schema_change: append_new_columns
   - tags: [sap, bronze, scd2]
   - target database: DWH
   - target schema: BRONZE

4. Bouw het model als SCD2 met deze kolommen:
   - <business_key>
   - valid_from
   - valid_to
   - is_current
   - load_ts
   de <business_key> wordt bepaald door de primaire sleutel van de SAP-tabel of een samengestelde business key die uniek is voor de entiteit.
   de kolom valid_from wordt gevuld met de huidige timestamp bij het laden van een nieuwe rij, valid_to wordt gevuld met 9999-12-31 voor actieve rijen en met de timestamp van de sluiting voor historische rijen, is_current is een boolean die aangeeft of de rij actief is, en load_ts is de timestamp van het laden van de rij.
   de valid_from kolom is onderdeel van de primary key van de doeltafel, samen met de business_key.

5. Gebruik de primaire sleutel of een logisch business key als unieke sleutel. Als er geen expliciete sleutel is, gebruik een samengestelde sleutel uit de SAP-tabel.

## Template voor een gegenereerd model
```sql
{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='business_key',
    on_schema_change='append_new_columns',
    alias='HTECC_<TABLE>',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        *,
        md5(concat_ws('|', <BUSINESS_KEY_COLUMNS>)) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', '<TABLE>') }}
),

scd2 as (
    select
        business_key,
        <ALL_COLUMNS>,
        load_ts,
        current_timestamp() as valid_from,
        null as valid_to,
        true as is_current
    from source
)

select *
from scd2
```

## Aanbevolen merge-logica voor echte SCD2-update
Als de bron wordt bijgewerkt, moet een bestaande rij worden gesloten en moet een nieuwe actieve rij worden toegevoegd. Gebruik hiervoor een merge-logica die:
- bestaande actieve rijen afsluit wanneer de business key terugkomt met andere gegevens
- een nieuwe actieve rij toevoegt met een nieuwe valid_from

## Output die deze skill moet leveren
Voor elke tabel moet je genereren:
- een bronentry in dbt/models/sources.yml
- een dbt-modelbestand in dbt/models/bronze/
- een doeltafel in DWH.BRONZE met naam HTECC_<TABLE>
- een incremental SCD2-structuur met actieve en historische versies
