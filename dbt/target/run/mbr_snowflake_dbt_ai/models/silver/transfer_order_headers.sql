
  
    



create or replace transient  table DEMO.SILVER_SILVER.transfer_order_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTAK
    )
;




  