SELECT
    PLANT_CODE,
    PLANT_NAME,
    COMPANY_CODE,
    COUNTRY
FROM {{ ref('plants') }} 
