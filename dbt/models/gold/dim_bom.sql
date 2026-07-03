SELECT
    h.BOM_NUMBER,
    h.BOM_TYPE,
    h.BOM_ALTERNATIVE,
    h.BASE_QUANTITY,
    h.BASE_UNIT,
    i.ITEM_NODE,
    i.COMPONENT_NUMBER AS COMPONENT_MATERIAL,
    i.COMPONENT_QUANTITY,
    i.COMPONENT_UNIT
FROM {{ ref('bill_of_materials') }} h
JOIN {{ ref('bom_items') }} i
    ON h.BOM_NUMBER = i.BOM_NUMBER
