SELECT
    o.ORDER_NUMBER,
    o.ORDER_TYPE,
    o.COMPANY_CODE,
    o.PLANT,
    o.COST_CENTER,
    o.CREATED_DATE,
    po.MATERIAL_NUMBER,
    po.ORDER_QUANTITY,
    po.UNIT_OF_MEASURE AS PRODUCTION_UNIT,
    po.PLANNED_FINISH_DATE,
    po.PLANNED_START_DATE
FROM {{ ref('production_orders') }} o
LEFT JOIN {{ ref('production_order_items') }} po
    ON o.ORDER_NUMBER = po.ORDER_NUMBER
