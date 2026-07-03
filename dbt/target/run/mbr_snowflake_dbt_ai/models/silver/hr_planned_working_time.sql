
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_planned_working_time
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0007
    )
;




  