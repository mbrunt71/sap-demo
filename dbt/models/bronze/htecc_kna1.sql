{{ config(
    materialized='incremental',
    incremental_strategy='append',
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
        name1,
        land1,
        ort01,
        pstlz,
        stras,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(kunnr, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'KNA1') }}
)

select
    business_key,
    mandt,
    kunnr,
    name1,
    land1,
    ort01,
    pstlz,
    stras,
    load_ts,
    current_timestamp() as valid_from,
    cast('9999-12-31 23:59:59' as timestamp) as valid_to,
    true as is_current
from source
