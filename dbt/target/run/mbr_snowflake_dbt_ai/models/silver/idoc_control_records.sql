
  
    



create or replace transient  table DEMO.SILVER_SILVER.idoc_control_records
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.EDIDC
    )
;




  