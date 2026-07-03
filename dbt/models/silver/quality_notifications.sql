SELECT
    *
FROM {{ source('sap_ecc', 'QMEL') }}
