SELECT
    *
FROM {{ source('sap_ecc', 'OBJK') }}
