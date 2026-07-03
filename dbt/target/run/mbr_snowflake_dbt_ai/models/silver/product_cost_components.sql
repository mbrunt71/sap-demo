
  
    



create or replace transient  table DEMO.SILVER_SILVER.product_cost_components
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.KEPH
    )
;




  