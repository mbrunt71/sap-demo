
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_recurring_deductions
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0014
    )
;




  