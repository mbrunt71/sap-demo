SELECT
    *
FROM {{ source('sap_ecc', 'USR02') }}
