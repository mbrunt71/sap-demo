
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_org_objects
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PLVAR AS PLAN_VERSION,
    OTYPE AS OBJECT_TYPE,
    OBJID AS OBJECT_ID,
    BEGDA AS START_DATE,
    ENDDA AS END_DATE,
    STEXT AS OBJECT_NAME,
    LANGU AS LANGUAGE
FROM DEMO.SAP_ECC.HRP1000
    )
;




  