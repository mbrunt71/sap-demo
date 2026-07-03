
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_attendances
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA2002
    )
;




  