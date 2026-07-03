
  
    



create or replace transient  table DEMO.SILVER_SILVER.work_centers
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    OBJID AS WORK_CENTER_ID,
    ARBPL AS WORK_CENTER_NAME,
    WERKS AS PLANT_CODE,
    VERWE AS WORK_CENTER_CATEGORY,
    OBJTY AS OBJECT_TYPE
FROM DEMO.SAP_ECC.CRHD
    )
;




  