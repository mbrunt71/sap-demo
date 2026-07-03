SELECT
    *
FROM {{ source('sap_ecc', 'COSS') }}
