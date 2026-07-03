
  
    



create or replace transient  table DEMO.SILVER_SILVER.gl_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAS
    )
;




  