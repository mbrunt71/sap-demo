
  
    



create or replace transient  table DEMO.SILVER_SILVER.customer_open_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSID
    )
;




  