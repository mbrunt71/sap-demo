SELECT
    *
FROM {{ source('sap_ecc', 'LEIN') }}
