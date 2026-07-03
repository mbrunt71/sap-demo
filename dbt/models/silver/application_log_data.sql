SELECT
    *
FROM {{ source('sap_ecc', 'BALDAT') }}
