SELECT
    *
FROM {{ source('sap_ecc', 'LTAK') }}
