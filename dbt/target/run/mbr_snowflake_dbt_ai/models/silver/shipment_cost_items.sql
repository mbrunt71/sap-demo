
  
    



create or replace transient  table DEMO.SILVER_SILVER.shipment_cost_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VFKN
    )
;




  