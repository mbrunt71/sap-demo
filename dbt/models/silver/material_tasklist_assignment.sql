SELECT
    *
FROM {{ source('sap_ecc', 'MAPL') }}
