
  
    



create or replace transient  table DEMO.SILVER_SILVER.bill_of_materials
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    STLNR AS BOM_NUMBER,
    STLAL AS BOM_ALTERNATIVE,
    STLTY AS BOM_USAGE,
    STLST AS BOM_STATUS,
    BMENG AS BASE_QUANTITY,
    BMEIN AS BASE_UNIT,
    ANDAT AS CREATED_DATE,
    ANNAM AS CREATED_BY
FROM DEMO.SAP_ECC.STKO
    )
;




  