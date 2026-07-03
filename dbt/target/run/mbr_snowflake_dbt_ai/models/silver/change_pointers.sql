
  
    



create or replace transient  table DEMO.SILVER_SILVER.change_pointers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BDCP2
    )
;




  