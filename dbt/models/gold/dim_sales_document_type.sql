SELECT
    s.DOCUMENT_TYPE_CODE,
    s.DOCUMENT_TYPE_NAME
FROM {{ ref('sales_orders') }} s
GROUP BY 1, 2
