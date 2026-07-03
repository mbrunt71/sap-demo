SELECT
    *
FROM {{ source('sap_ecc', 'BSAK') }}
