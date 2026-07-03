SELECT
    *
FROM {{ source('sap_ecc', 'EDID4') }}
