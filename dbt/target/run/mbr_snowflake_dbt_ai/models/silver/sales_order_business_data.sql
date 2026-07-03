
  
    



create or replace transient  table DEMO.SILVER_SILVER.sales_order_business_data
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_DOCUMENT,
    POSNR AS ITEM_NUMBER,
    ZTERM AS PAYMENT_TERMS,
    INCO1 AS INCOTERMS_1,
    INCO2 AS INCOTERMS_2
FROM DEMO.SAP_ECC.VBKD
    )
;




  