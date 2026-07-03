
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_addresses
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0006
    )
;




  