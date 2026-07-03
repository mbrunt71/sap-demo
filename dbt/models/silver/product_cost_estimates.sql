SELECT
    *
FROM {{ source('sap_ecc', 'KEKO') }}
