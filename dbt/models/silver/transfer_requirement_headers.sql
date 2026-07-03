SELECT
    *
FROM {{ source('sap_ecc', 'LTBK') }}
