SELECT
    *
FROM {{ source('sap_ecc', 'COBK') }}
