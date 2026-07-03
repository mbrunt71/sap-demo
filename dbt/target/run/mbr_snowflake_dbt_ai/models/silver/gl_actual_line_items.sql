
  
    



create or replace transient  table DEMO.SILVER_SILVER.gl_actual_line_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.FAGLFLEXA
    )
;




  