SELECT
    *
FROM {{ source('sap_ecc', 'PA0014') }}
