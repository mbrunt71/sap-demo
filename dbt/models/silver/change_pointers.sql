SELECT
    *
FROM {{ source('sap_ecc', 'BDCP2') }}
