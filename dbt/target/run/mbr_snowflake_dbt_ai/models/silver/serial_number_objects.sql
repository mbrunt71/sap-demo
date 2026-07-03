
  
    



create or replace transient  table DEMO.SILVER_SILVER.serial_number_objects
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.OBJK
    )
;




  