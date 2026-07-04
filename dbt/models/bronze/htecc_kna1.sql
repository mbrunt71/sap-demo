{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='business_key',
    on_schema_change='append_new_columns',
    alias='HTECC_KNA1',
    database='DWH',
    schema='BRONZE',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        mandt,
        kunnr,
        land1,
        name1,
        name2,
        ort01,
        pstlz,
        regio,
        stras,
        telf1,
        telfx,
        spras,
        ktokd,
        brsch,
        kukla,
        stcd1,
        stcd2,
        loevm,
        erdat,
        ernam,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(kunnr, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'KNA1') }}
),

scd2 as (
    select
        business_key,
        mandt,
        kunnr,
        land1,
        name1,
        name2,
        ort01,
        pstlz,
        regio,
        stras,
        telf1,
        telfx,
        spras,
        ktokd,
        brsch,
        kukla,
        stcd1,
        stcd2,
        loevm,
        erdat,
        ernam,
        load_ts,
        current_timestamp() as valid_from,
        cast(null as timestamp) as valid_to,
        true as is_current
    from source
)

select *
from scd2
