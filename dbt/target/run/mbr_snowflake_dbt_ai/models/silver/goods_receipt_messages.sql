
  
    



create or replace transient  table DEMO.SILVER_SILVER.goods_receipt_messages
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RLGRAP
    )
;




  