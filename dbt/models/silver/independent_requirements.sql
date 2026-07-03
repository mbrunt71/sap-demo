SELECT
    *
FROM {{ source('sap_ecc', 'PBIM') }}
