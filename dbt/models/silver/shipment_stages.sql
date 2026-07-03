SELECT
    *
FROM {{ source('sap_ecc', 'VTTS') }}
