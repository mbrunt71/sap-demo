SELECT
    *
FROM {{ source('sap_ecc', 'KEPH') }}
