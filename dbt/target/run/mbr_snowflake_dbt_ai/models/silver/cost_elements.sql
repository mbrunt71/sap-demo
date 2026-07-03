
  
    



create or replace transient  table DEMO.SILVER_SILVER.cost_elements
    
    
    
    as (SELECT
    c.MANDT AS CLIENT,
    c.KTOPL AS CHART_OF_ACCOUNTS,
    c.KSTAR AS COST_ELEMENT,
    t.KTEXT AS COST_ELEMENT_NAME,
    t.LTEXT AS COST_ELEMENT_DESCRIPTION
FROM DEMO.SAP_ECC.CSKA c
LEFT JOIN DEMO.SAP_ECC.CSKU t
    ON c.MANDT = t.MANDT AND c.KTOPL = t.KTOPL AND c.KSTAR = t.KSTAR
    AND t.SPRAS = 'E'
    )
;




  