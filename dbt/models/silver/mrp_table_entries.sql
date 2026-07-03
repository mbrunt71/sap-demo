SELECT
    *
FROM {{ source('sap_ecc', 'MDTB') }}
