
  create or replace   view DEMO.SILVER_GOLD_DIMENSIONAL.dim_org_unit
  
  
  
  
  as (
    SELECT
    OBJECT_TYPE,
    OBJECT_ID,
    OBJECT_NAME,
    START_DATE,
    END_DATE
FROM DEMO.SILVER_SILVER.hr_org_objects
  );

