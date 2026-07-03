
  
    



create or replace transient  table DEMO.SILVER_SILVER.role_texts
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AGR_TEXTS
    )
;




  