
  
    



create or replace transient  table DEMO.SILVER_SILVER.transfer_requirement_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTBK
    )
;




  