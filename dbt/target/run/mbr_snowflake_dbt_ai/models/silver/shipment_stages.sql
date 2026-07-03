
  
    



create or replace transient  table DEMO.SILVER_SILVER.shipment_stages
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VTTS
    )
;




  