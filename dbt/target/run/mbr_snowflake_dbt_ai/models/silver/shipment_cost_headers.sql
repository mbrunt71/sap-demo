
  
    



create or replace transient  table DEMO.SILVER_SILVER.shipment_cost_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VFKP
    )
;




  