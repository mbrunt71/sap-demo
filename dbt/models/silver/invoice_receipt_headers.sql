SELECT
    *
FROM {{ source('sap_ecc', 'RBKP') }}
