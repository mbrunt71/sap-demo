
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_absences
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PERNR AS PERSONNEL_NUMBER,
    ENDDA AS END_DATE,
    BEGDA AS START_DATE,
    SUBTY AS ABSENCE_TYPE,
    ABESSION AS ABSENCE_HOURS
FROM DEMO.SAP_ECC.PA2001
    )
;




  