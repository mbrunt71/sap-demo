SELECT
    v.VENDOR_NUMBER,
    v.VENDOR_NAME,
    v.COUNTRY,
    v.CITY,
    v.POSTAL_CODE,
    vc.COMPANY_CODE,
    vp.PURCHASING_ORGANIZATION
FROM {{ ref('vendors') }} v
LEFT JOIN {{ ref('vendor_company_codes') }} vc
    ON v.VENDOR_NUMBER = vc.VENDOR_NUMBER
LEFT JOIN {{ ref('vendor_purchasing_org') }} vp
    ON v.VENDOR_NUMBER = vp.VENDOR_NUMBER
