SELECT
    c.CUSTOMER_NUMBER,
    c.CUSTOMER_NAME,
    c.COUNTRY,
    c.CITY,
    c.POSTAL_CODE,
    s.SALES_ORGANIZATION,
    s.DISTRIBUTION_CHANNEL,
    s.DIVISION,
    s.CUSTOMER_GROUP,
    s.CURRENCY
FROM {{ ref('customers') }} c
LEFT JOIN {{ ref('customer_sales_areas') }} s
    ON c.CUSTOMER_NUMBER = s.CUSTOMER_NUMBER
