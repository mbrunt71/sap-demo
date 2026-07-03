
  
    



create or replace transient  table DEMO.SILVER_SILVER.currencies
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    WAERS AS CURRENCY_CODE,
    ISOCD AS ISO_CODE,
    ALTWR AS ALTERNATE_CODE,
    GDATU AS VALID_FROM,
    XPRIMARY AS PRIMARY_CURRENCY
FROM DEMO.SAP_ECC.TCURC
    )
;




  