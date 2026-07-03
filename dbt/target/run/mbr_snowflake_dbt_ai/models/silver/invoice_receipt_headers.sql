
  
    



create or replace transient  table DEMO.SILVER_SILVER.invoice_receipt_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RBKP
    )
;




  