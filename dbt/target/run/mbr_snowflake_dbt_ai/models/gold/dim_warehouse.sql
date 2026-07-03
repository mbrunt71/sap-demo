
  create or replace   view DEMO.SILVER_GOLD_DIMENSIONAL.dim_warehouse
  
  
  
  
  as (
    SELECT
    WAREHOUSE_NUMBER,
    QUANT_NUMBER,
    MATERIAL_NUMBER,
    PLANT,
    STORAGE_TYPE,
    STORAGE_BIN,
    AVAILABLE_QUANTITY,
    UNIT_OF_MEASURE
FROM DEMO.SILVER_SILVER.warehouse_quants
  );

