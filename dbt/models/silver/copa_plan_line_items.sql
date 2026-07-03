SELECT
    *
FROM {{ source('sap_ecc', 'CE2XXXX') }}
