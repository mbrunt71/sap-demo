SELECT
    *
FROM {{ source('sap_ecc', 'AGR_TEXTS') }}
