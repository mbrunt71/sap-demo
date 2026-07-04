{{ config(
    materialized='incremental',
    incremental_strategy='append',
    on_schema_change='append_new_columns',
    alias='HTECC_VBAK',
    database='DWH',
    schema='BRONZE',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        mandt,
        vbeln,
        auart,
        vkorg,
        vtweg,
        spart,
        kunnr,
        erdat,
        netwr,
        waerk,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(vbeln, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'VBAK') }}
)

select
    business_key,
    mandt,
    vbeln,
    auart,
    vkorg,
    vtweg,
    spart,
    kunnr,
    erdat,
    netwr,
    waerk,
    load_ts,
    current_timestamp() as valid_from,
    cast('9999-12-31 23:59:59' as timestamp) as valid_to,
    true as is_current
from source
