
  
    



create or replace transient  table DEMO.SILVER_SILVER.transfer_requirement_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTBP
    )
;




  