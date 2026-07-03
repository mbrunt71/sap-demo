SELECT
    *
FROM {{ source('sap_ecc', 'BALHDR') }}
