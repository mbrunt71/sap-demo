SELECT
    *
FROM {{ source('sap_ecc', 'HRP1001') }}
