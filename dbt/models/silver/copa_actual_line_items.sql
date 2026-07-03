SELECT
    *
FROM {{ source('sap_ecc', 'CE1XXXX') }}
