SELECT
    *
FROM {{ source('sap_ecc', 'SER01') }}
