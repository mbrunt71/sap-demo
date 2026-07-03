
  
    



create or replace transient  table DEMO.SILVER_SILVER.production_reservations
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RESB
    )
;




  