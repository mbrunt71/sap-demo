SELECT
    *
FROM {{ source('sap_ecc', 'PA2002') }}
