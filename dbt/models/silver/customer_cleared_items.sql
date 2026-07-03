SELECT
    *
FROM {{ source('sap_ecc', 'BSAD') }}
