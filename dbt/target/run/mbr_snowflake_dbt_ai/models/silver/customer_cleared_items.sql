
  
    



create or replace transient  table DEMO.SILVER_SILVER.customer_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAD
    )
;




  