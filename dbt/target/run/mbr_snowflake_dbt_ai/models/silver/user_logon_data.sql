
  
    



create or replace transient  table DEMO.SILVER_SILVER.user_logon_data
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.USR02
    )
;




  