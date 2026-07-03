
  
    



create or replace transient  table DEMO.SILVER_SILVER.co_totals_external
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COSP
    )
;




  