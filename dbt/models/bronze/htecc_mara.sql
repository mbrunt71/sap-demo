{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='business_key',
    on_schema_change='append_new_columns',
    alias='HTECC_MARA',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        mandt,
        matnr,
        mtart,
        matkl,
        meins,
        brgew,
        ntgew,
        gewei,
        spart,
        prdha,
        bismt,
        mstae,
        ernam,
        laeda,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(matnr, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'MARA') }}
),

scd2 as (
    select
        business_key,
        mandt,
        matnr,
        mtart,
        matkl,
        meins,
        brgew,
        ntgew,
        gewei,
        spart,
        prdha,
        bismt,
        mstae,
        ernam,
        laeda,
        load_ts,
        current_timestamp() as valid_from,
        cast(null as timestamp) as valid_to,
        true as is_current
    from source
)

select *
from scd2
