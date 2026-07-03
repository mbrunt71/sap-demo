SELECT
    *
FROM {{ source('sap_ecc', 'MLCD') }}
