SELECT
    *
FROM {{ source('sap_ecc', 'RLGRAP') }}
