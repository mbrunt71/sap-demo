
  
    



create or replace transient  table DEMO.SILVER_SILVER.invoice_receipt_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RSEG
    )
;




  