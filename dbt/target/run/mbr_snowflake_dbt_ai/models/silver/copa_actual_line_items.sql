
  
    



create or replace transient  table DEMO.SILVER_SILVER.copa_actual_line_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CE1XXXX
    )
;




  