SELECT
    *
FROM {{ source('sap_ecc', 'LTAP') }}
