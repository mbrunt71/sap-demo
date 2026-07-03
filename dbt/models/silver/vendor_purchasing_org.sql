SELECT
    *
FROM {{ source('sap_ecc', 'LFM1') }}
