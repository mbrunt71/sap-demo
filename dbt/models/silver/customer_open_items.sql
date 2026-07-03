SELECT
    *
FROM {{ source('sap_ecc', 'BSID') }}
