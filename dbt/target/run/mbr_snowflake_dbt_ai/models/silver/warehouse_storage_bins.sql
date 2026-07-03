
  
    



create or replace transient  table DEMO.SILVER_SILVER.warehouse_storage_bins
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LAGP
    )
;




  