
  create or replace   view DEMO.SILVER_GOLD_DIMENSIONAL.fct_quality_notification
  
  
  
  
  as (
    SELECT
    *
FROM DEMO.SILVER_SILVER.quality_notifications
  );

