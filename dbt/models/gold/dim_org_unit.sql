SELECT
    OBJECT_TYPE,
    OBJECT_ID,
    OBJECT_NAME,
    START_DATE,
    END_DATE
FROM {{ ref('hr_org_objects') }}
