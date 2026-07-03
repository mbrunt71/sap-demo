
  
    



create or replace transient  table DEMO.SILVER_SILVER.product_cost_estimates
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.KEKO
    )
;




  