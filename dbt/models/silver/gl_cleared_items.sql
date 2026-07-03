SELECT
    *
FROM {{ source('sap_ecc', 'BSAS') }}
