{{ config(
    materialized='incremental',
    incremental_strategy='append',
    on_schema_change='append_new_columns',
    alias='HTECC_MARA',
    database='DWH',
    schema='BRONZE',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        mandt,
        matnr,
        mtart,
        mbrsh,
        matkl,
        meins,
        brgew,
        gewei,
        erdat,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(matnr, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'MARA') }}
)

select
    business_key,
    mandt,
    matnr,
    mtart,
    mbrsh,
    matkl,
    meins,
    brgew,
    gewei,
    erdat,
    load_ts,
    current_timestamp() as valid_from,
    cast('9999-12-31 23:59:59' as timestamp) as valid_to,
    true as is_current
from source
