
  
    



create or replace transient  table DEMO.SILVER_SILVER.role_user_assignments
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AGR_USERS
    )
;




  