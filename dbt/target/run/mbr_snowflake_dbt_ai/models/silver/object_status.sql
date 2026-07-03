
  
    



create or replace transient  table DEMO.SILVER_SILVER.object_status
    
    
    
    as (SELECT
    j.MANDT AS CLIENT,
    j.OBJNR AS OBJECT_NUMBER,
    j.STAT AS STATUS,
    j.INACT AS INACTIVE_FLAG,
    t.TXT04 AS STATUS_SHORT_TEXT,
    t.TXT30 AS STATUS_DESCRIPTION
FROM DEMO.SAP_ECC.JEST j
LEFT JOIN DEMO.SAP_ECC.TJ02T t
    ON j.MANDT = t.MANDT AND j.STAT = t.ISTAT
    AND t.SPRAS = 'E'
    )
;




  