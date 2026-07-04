---
name: sap-ecc-dbt-bronze
description: Genereer eenvoudige dbt-bronze modellen voor SAP ECC-tabellen met bron-source-definities en basis-SCD2-velden.
---

# Skill: SAP ECC naar dbt bronze

## Doel
Maak voor elke SAP-tabel uit de brondatabase SAP.SAP_ECC een eenvoudig dbt-bronze model dat:
- de bron definieert als source met naam sap_ecc
- de bron gebruikt vanuit database SAP en schema SAP_ECC
- een incremental model genereert in de bronze laag
- de benodigde bronze velden toevoegt: business_key, valid_from, valid_to, is_current en load_ts

## Gebruik
Gebruik deze skill wanneer je een nieuwe set SAP ECC-tabellen wilt laten opnemen in dbt en wilt dat deze als eenvoudige bronze kopie worden opgenomen.

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
   - incremental_strategy: append
   - on_schema_change: append_new_columns
   - tags: [sap, bronze, scd2]
   - target database: DWH
   - target schema: BRONZE

4. Bouw het model als eenvoudige bronze-opname met deze kolommen:
   - <business_key>
   - valid_from
   - valid_to
   - is_current
   - load_ts
   De <business_key> wordt bepaald door de primaire sleutel van de SAP-tabel of een samengestelde business key die uniek is voor de entiteit.
   valid_from wordt gevuld met de huidige timestamp.
   valid_to wordt gevuld met 9999-12-31 23:59:59 voor de actieve versie.
   is_current is een boolean die aangeeft of de rij actief is.
   load_ts is de timestamp van het laden van de rij.

5. Gebruik de primaire sleutel of een logisch business key als bron voor de business_key. Als er geen expliciete sleutel is, gebruik een samengestelde sleutel uit de SAP-tabel.

## Template voor een gegenereerd model
```sql
{{ config(
    materialized='incremental',
    incremental_strategy='append',
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
)

select
    business_key,
    <ALL_COLUMNS>,
    load_ts,
    current_timestamp() as valid_from,
    cast('9999-12-31 23:59:59' as timestamp) as valid_to,
    true as is_current
from source
```

## Output die deze skill moet leveren
Voor elke tabel moet je genereren:
- een bronentry in dbt/models/sources.yml
- een dbt-modelbestand in dbt/models/bronze/
- een doeltafel in DWH.BRONZE met naam HTECC_<TABLE>
- een eenvoudige incremental bronze-opname met basis-SCD2-velden
