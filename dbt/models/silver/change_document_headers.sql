SELECT
    *
FROM {{ source('sap_ecc', 'CDHDR') }}
