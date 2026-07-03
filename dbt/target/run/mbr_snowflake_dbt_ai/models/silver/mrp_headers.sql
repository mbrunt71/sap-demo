
  
    



create or replace transient  table DEMO.SILVER_SILVER.mrp_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MDKP
    )
;




  