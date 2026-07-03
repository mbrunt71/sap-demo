
  
    



create or replace transient  table DEMO.SILVER.sales_organizations
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VKORG AS SALES_ORGANIZATION,
    BUKRS AS COMPANY_CODE,
    WAERS AS CURRENCY,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    ADRNR AS ADDRESS_NUMBER
FROM DEMO.SAP_ECC.TVKO
    )
;




  