SELECT
    *
FROM {{ source('sap_ecc', 'MDKP') }}
