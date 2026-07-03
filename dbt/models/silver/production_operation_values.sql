SELECT
    *
FROM {{ source('sap_ecc', 'AFVV') }}
