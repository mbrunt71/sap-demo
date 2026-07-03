SELECT
    *
FROM {{ source('sap_ecc', 'VFKN') }}
