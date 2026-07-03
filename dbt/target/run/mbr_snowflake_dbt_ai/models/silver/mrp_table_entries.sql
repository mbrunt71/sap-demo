
  
    



create or replace transient  table DEMO.SILVER_SILVER.mrp_table_entries
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MDTB
    )
;




  