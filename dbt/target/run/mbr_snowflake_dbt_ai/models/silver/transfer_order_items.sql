
  
    



create or replace transient  table DEMO.SILVER_SILVER.transfer_order_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTAP
    )
;




  