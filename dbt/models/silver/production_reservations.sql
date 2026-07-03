SELECT
    *
FROM {{ source('sap_ecc', 'RESB') }}
