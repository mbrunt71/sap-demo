
  
    



create or replace transient  table DEMO.SILVER_SILVER.hr_org_descriptions
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.HRP1002
    )
;




  