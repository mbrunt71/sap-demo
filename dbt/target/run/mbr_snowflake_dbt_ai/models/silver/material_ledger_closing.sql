
  
    



create or replace transient  table DEMO.SILVER_SILVER.material_ledger_closing
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MLCD
    )
;




  