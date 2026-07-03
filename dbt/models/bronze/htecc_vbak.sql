{{ config(
    materialized='incremental',
    incremental_strategy='merge',
    unique_key='business_key',
    on_schema_change='append_new_columns',
    alias='HTECC_VBAK',
    tags=['sap', 'bronze', 'scd2']
) }}

with source as (
    select
        mandt,
        vbeln,
        erdat,
        erzet,
        netwr,
        waerk,
        vkorg,
        vtweg,
        spart,
        kunnr,
        audat,
        auart,
        vkbur,
        vkgrp,
        md5(concat_ws('|', coalesce(mandt, ''), coalesce(vbeln, ''))) as business_key,
        current_timestamp() as load_ts
    from {{ source('sap_ecc', 'VBAK') }}
),

scd2 as (
    select
        business_key,
        mandt,
        vbeln,
        erdat,
        erzet,
        netwr,
        waerk,
        vkorg,
        vtweg,
        spart,
        kunnr,
        audat,
        auart,
        vkbur,
        vkgrp,
        load_ts,
        current_timestamp() as valid_from,
        cast(null as timestamp) as valid_to,
        true as is_current
    from source
)

select *
from scd2
