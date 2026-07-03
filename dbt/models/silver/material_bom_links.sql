SELECT
    *
FROM {{ source('sap_ecc', 'MAST') }}
