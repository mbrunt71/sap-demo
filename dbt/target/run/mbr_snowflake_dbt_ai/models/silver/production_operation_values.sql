
  
    



create or replace transient  table DEMO.SILVER_SILVER.production_operation_values
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AFVV
    )
;




  