
  
    



create or replace transient  table DEMO.SILVER_SILVER.shipment_document_flow
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VTFA
    )
;




  