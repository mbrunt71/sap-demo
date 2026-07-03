
  
    



create or replace transient  table DEMO.SILVER_SILVER.shipment_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    TKNUM AS SHIPMENT_NUMBER,
    TPNUM AS ITEM_NUMBER,
    VBELN AS DELIVERY_NUMBER
FROM DEMO.SAP_ECC.VTTP
    )
;




  