
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_organizational_assignment
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0001
    )
;




  