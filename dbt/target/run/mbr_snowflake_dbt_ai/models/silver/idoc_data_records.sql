
  
    



create or replace transient  table DEMO.SILVER_SILVER.idoc_data_records
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.EDID4
    )
;




  