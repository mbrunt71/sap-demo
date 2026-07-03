
  
    



create or replace transient  table DEMO.SILVER_SILVER.production_operations
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AFVC
    )
;




  