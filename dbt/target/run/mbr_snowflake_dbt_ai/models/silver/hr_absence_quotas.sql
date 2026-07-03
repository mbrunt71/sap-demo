
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_absence_quotas
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA2006
    )
;




  