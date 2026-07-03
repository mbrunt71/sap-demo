
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_additional_payments
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0015
    )
;




  