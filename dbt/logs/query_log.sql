-- created_at: 2026-06-15T19:03:02.505142773+00:00
-- finished_at: 2026-06-15T19:03:02.639926551+00:00
-- elapsed: 134ms
-- outcome: success
-- dialect: snowflake
-- node_id: not available
-- query_id: 01c51257-0307-1b15-0005-0a3e001810b6
-- desc: execute adapter call
show terse schemas in database DEMO
    limit 10000
/* {"app": "dbt", "connection_name": "", "dbt_version": "2.0.0", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:02.713603956+00:00
-- finished_at: 2026-06-15T19:03:02.895230407+00:00
-- elapsed: 181ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_purchasing_org
-- query_id: 01c51257-0307-1b15-0005-0a3e001810ba
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.169421924+00:00
-- finished_at: 2026-06-15T19:03:06.466984881+00:00
-- elapsed: 297ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_requirement_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181886
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.169887204+00:00
-- finished_at: 2026-06-15T19:03:06.506383321+00:00
-- elapsed: 336ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_open_items
-- query_id: 01c51257-0307-1b15-0005-0a3e001818a2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.170185303+00:00
-- finished_at: 2026-06-15T19:03:06.583283575+00:00
-- elapsed: 413ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.work_centers
-- query_id: 01c51257-0307-1b15-0005-0a3e001818be
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.171290361+00:00
-- finished_at: 2026-06-15T19:03:06.654550871+00:00
-- elapsed: 483ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_attendances
-- query_id: 01c51257-0307-1b15-0005-0a3e001818d6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:02.915352955+00:00
-- finished_at: 2026-06-15T19:03:06.700417043+00:00
-- elapsed: 3.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_purchasing_org
-- query_id: 01c51257-0307-1b15-0005-0a3e0018173e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.vendor_purchasing_org
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LFM1
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.vendor_purchasing_org", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.170826862+00:00
-- finished_at: 2026-06-15T19:03:06.802660522+00:00
-- elapsed: 631ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_recurring_deductions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181916
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.172330361+00:00
-- finished_at: 2026-06-15T19:03:06.818547546+00:00
-- elapsed: 646ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.warehouse_quants
-- query_id: 01c51257-0307-1b15-0005-0a3e00181926
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.172057231+00:00
-- finished_at: 2026-06-15T19:03:06.823843710+00:00
-- elapsed: 651ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_requisitions
-- query_id: 01c51257-0307-1b15-0005-0a3e0018192a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.174789789+00:00
-- finished_at: 2026-06-15T19:03:07.117693594+00:00
-- elapsed: 942ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.independent_requirements
-- query_id: 01c51257-0307-1b15-0005-0a3e0018196a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.173168229+00:00
-- finished_at: 2026-06-15T19:03:07.126748489+00:00
-- elapsed: 953ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_organizational_assignment
-- query_id: 01c51257-0307-1b15-0005-0a3e0018194a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.176121856+00:00
-- finished_at: 2026-06-15T19:03:07.129122050+00:00
-- elapsed: 953ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.mrp_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181986
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.175622557+00:00
-- finished_at: 2026-06-15T19:03:07.142976103+00:00
-- elapsed: 967ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e0018199a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.177006886+00:00
-- finished_at: 2026-06-15T19:03:07.154052014+00:00
-- elapsed: 977ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_personal_data
-- query_id: 01c51257-0307-1b15-0005-0a3e0018199e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.176717463+00:00
-- finished_at: 2026-06-15T19:03:07.214875260+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_requirement_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e001819aa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.177771522+00:00
-- finished_at: 2026-06-15T19:03:07.222376434+00:00
-- elapsed: 1.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.currencies
-- query_id: 01c51257-0307-1b15-0005-0a3e001819a6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.178896046+00:00
-- finished_at: 2026-06-15T19:03:07.250407488+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.idoc_data_records
-- query_id: 01c51257-0307-1b15-0005-0a3e001819b6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.178188930+00:00
-- finished_at: 2026-06-15T19:03:07.251817831+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_planned_working_time
-- query_id: 01c51257-0307-1b15-0005-0a3e001819ae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.179431169+00:00
-- finished_at: 2026-06-15T19:03:07.351735604+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.user_logon_data
-- query_id: 01c51257-0307-1b15-0005-0a3e001819e2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.180115105+00:00
-- finished_at: 2026-06-15T19:03:07.648066563+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_operation_values
-- query_id: 01c51257-0307-1b15-0005-0a3e001819f2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.181105380+00:00
-- finished_at: 2026-06-15T19:03:07.658805611+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_company_codes
-- query_id: 01c51257-0307-1b15-0005-0a3e001819fa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.180577051+00:00
-- finished_at: 2026-06-15T19:03:07.668492318+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.deliveries
-- query_id: 01c51257-0307-1b15-0005-0a3e001819f6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.181790875+00:00
-- finished_at: 2026-06-15T19:03:07.670074646+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.planned_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e001819fe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.182576199+00:00
-- finished_at: 2026-06-15T19:03:07.721551632+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_additional_payments
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a06
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.182915754+00:00
-- finished_at: 2026-06-15T19:03:07.726980487+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_tasklist_assignment
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a0a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.182277751+00:00
-- finished_at: 2026-06-15T19:03:07.728521003+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_relationships
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a02
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.183500915+00:00
-- finished_at: 2026-06-15T19:03:07.745295148+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_open_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a0e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.185558788+00:00
-- finished_at: 2026-06-15T19:03:07.770255905+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.idoc_control_records
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a16
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.184535418+00:00
-- finished_at: 2026-06-15T19:03:07.771946511+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_stages
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a12
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.185098804+00:00
-- finished_at: 2026-06-15T19:03:07.780000363+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.plants
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a1a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.185965090+00:00
-- finished_at: 2026-06-15T19:03:07.823419503+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.independent_requirements_schedule
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a22
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.186951250+00:00
-- finished_at: 2026-06-15T19:03:07.842029035+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_descriptions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a2a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.186378505+00:00
-- finished_at: 2026-06-15T19:03:07.843561649+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_sales_areas
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a26
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.187602463+00:00
-- finished_at: 2026-06-15T19:03:07.861348677+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendors
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a2e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.188166888+00:00
-- finished_at: 2026-06-15T19:03:07.880642187+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_objects
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a32
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.189198923+00:00
-- finished_at: 2026-06-15T19:03:07.882541055+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a36
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.188675211+00:00
-- finished_at: 2026-06-15T19:03:07.886051961+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_order_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a3a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.190102451+00:00
-- finished_at: 2026-06-15T19:03:07.899142323+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_operations
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a3e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.189597421+00:00
-- finished_at: 2026-06-15T19:03:07.930524066+00:00
-- elapsed: 1.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.product_cost_estimates
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a42
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.190369916+00:00
-- finished_at: 2026-06-15T19:03:08.323147018+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.role_texts
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a4a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.192719772+00:00
-- finished_at: 2026-06-15T19:03:08.326183861+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aa6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.191688160+00:00
-- finished_at: 2026-06-15T19:03:08.326350049+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a6a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.194352628+00:00
-- finished_at: 2026-06-15T19:03:08.326510005+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_order_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a7e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.191122568+00:00
-- finished_at: 2026-06-15T19:03:08.327255880+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a5a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.191006683+00:00
-- finished_at: 2026-06-15T19:03:08.331890583+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_ledger_closing
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a62
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.192485050+00:00
-- finished_at: 2026-06-15T19:03:08.332022290+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.warehouse_storage_bins
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a8a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193755525+00:00
-- finished_at: 2026-06-15T19:03:08.332275190+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.copa_plan_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a92
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193552073+00:00
-- finished_at: 2026-06-15T19:03:08.333384382+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_absence_quotas
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a9e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.192014125+00:00
-- finished_at: 2026-06-15T19:03:08.338530423+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_reservations
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a76
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.191717945+00:00
-- finished_at: 2026-06-15T19:03:08.338483919+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.role_user_assignments
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a6e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.192493747+00:00
-- finished_at: 2026-06-15T19:03:08.340488703+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_partners
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a96
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.195564135+00:00
-- finished_at: 2026-06-15T19:03:08.340624571+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.billing_documents
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a86
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193961712+00:00
-- finished_at: 2026-06-15T19:03:08.341337454+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.bom_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a82
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.195537491+00:00
-- finished_at: 2026-06-15T19:03:08.341337329+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_actions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a8e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.190625235+00:00
-- finished_at: 2026-06-15T19:03:08.345020748+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_schedules
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a66
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.192406571+00:00
-- finished_at: 2026-06-15T19:03:08.345317330+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_basic_pay
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a4e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.195833076+00:00
-- finished_at: 2026-06-15T19:03:08.351031135+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.object_status
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aaa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.194389233+00:00
-- finished_at: 2026-06-15T19:03:08.351048239+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_status
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.196081836+00:00
-- finished_at: 2026-06-15T19:03:08.353351663+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.cost_centers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aa2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193321333+00:00
-- finished_at: 2026-06-15T19:03:08.353358294+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.application_log_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a9a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193046036+00:00
-- finished_at: 2026-06-15T19:03:08.353352843+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.mrp_table_entries
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a7a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.191304489+00:00
-- finished_at: 2026-06-15T19:03:08.356874208+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_absences
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a52
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.193142490+00:00
-- finished_at: 2026-06-15T19:03:08.360133370+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ab2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.194662206+00:00
-- finished_at: 2026-06-15T19:03:08.360139741+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchasing_info_records
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ab6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.194858808+00:00
-- finished_at: 2026-06-15T19:03:08.360139739+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.product_cost_components
-- query_id: 01c51257-0307-1b15-0005-0a3e00181a72
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.195050854+00:00
-- finished_at: 2026-06-15T19:03:08.362279738+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_document_flow
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aba
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.196477599+00:00
-- finished_at: 2026-06-15T19:03:08.362286766+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.cost_elements
-- query_id: 01c51257-0307-1b15-0005-0a3e00181abe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.196469878+00:00
-- finished_at: 2026-06-15T19:03:08.423924438+00:00
-- elapsed: 2.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.accounting_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ac6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:06.471454170+00:00
-- finished_at: 2026-06-15T19:03:09.133045487+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_requirement_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aca
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.transfer_requirement_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTBP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.transfer_requirement_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.656867827+00:00
-- finished_at: 2026-06-15T19:03:09.150080589+00:00
-- elapsed: 2.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_attendances
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ad2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_attendances
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA2002
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_attendances", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.806729106+00:00
-- finished_at: 2026-06-15T19:03:09.165356277+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_recurring_deductions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ada
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_recurring_deductions
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0014
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_recurring_deductions", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.825420691+00:00
-- finished_at: 2026-06-15T19:03:09.188344842+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.warehouse_quants
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ade
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.warehouse_quants
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    LGNUM AS WAREHOUSE_NUMBER,
    LQNUM AS QUANT_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    WERKS AS PLANT,
    LGTYP AS STORAGE_TYPE,
    LGPLA AS STORAGE_BIN,
    GESME AS AVAILABLE_QUANTITY,
    MEINS AS UNIT_OF_MEASURE
FROM DEMO.SAP_ECC.LQUA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.warehouse_quants", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.587597115+00:00
-- finished_at: 2026-06-15T19:03:09.196119281+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.work_centers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ad6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.work_centers
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    OBJID AS WORK_CENTER_ID,
    ARBPL AS WORK_CENTER_NAME,
    WERKS AS PLANT_CODE,
    VERWE AS WORK_CENTER_CATEGORY,
    OBJTY AS OBJECT_TYPE
FROM DEMO.SAP_ECC.CRHD
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.work_centers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.827918193+00:00
-- finished_at: 2026-06-15T19:03:09.213516810+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_requisitions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ae2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchase_requisitions
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    BANFN AS REQUISITION_NUMBER,
    BNFPO AS ITEM_NUMBER,
    BSART AS DOCUMENT_TYPE,
    MATNR AS MATERIAL_NUMBER,
    MATKL AS MATERIAL_GROUP,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    MENGE AS QUANTITY,
    MEINS AS UNIT_OF_MEASURE,
    BADAT AS REQUISITION_DATE,
    FRGDT AS RELEASE_DATE,
    EKGRP AS PURCHASING_GROUP,
    EKORG AS PURCHASING_ORG,
    LIFNR AS FIXED_VENDOR,
    AFNAM AS REQUISITIONER,
    TXZ01 AS SHORT_TEXT,
    PREIS AS PRICE,
    PEINH AS PRICE_UNIT,
    WAERS AS CURRENCY,
    LOEKZ AS DELETION_FLAG,
    EBELN AS PO_NUMBER,
    EBELP AS PO_ITEM_NUMBER,
    ERNAM AS CREATED_BY,
    ERDAT AS CREATED_DATE
FROM DEMO.SAP_ECC.EBAN
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchase_requisitions", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.126531973+00:00
-- finished_at: 2026-06-15T19:03:09.267929477+00:00
-- elapsed: 2.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.independent_requirements
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ae6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.independent_requirements
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PBIM
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.independent_requirements", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:06.510579890+00:00
-- finished_at: 2026-06-15T19:03:09.586998817+00:00
-- elapsed: 3.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_open_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ace
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.vendor_open_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSIK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.vendor_open_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.226639682+00:00
-- finished_at: 2026-06-15T19:03:09.812839370+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.currencies
-- query_id: 01c51257-0307-1b15-0005-0a3e00181afe
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.currencies
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    WAERS AS CURRENCY_CODE,
    ISOCD AS ISO_CODE,
    ALTWR AS ALTERNATE_CODE,
    GDATU AS VALID_FROM,
    XPRIMARY AS PRIMARY_CURRENCY
FROM DEMO.SAP_ECC.TCURC
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.currencies", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.132844955+00:00
-- finished_at: 2026-06-15T19:03:09.822490150+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.mrp_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aee
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.mrp_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MDKP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.mrp_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.129361254+00:00
-- finished_at: 2026-06-15T19:03:09.857597315+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_organizational_assignment
-- query_id: 01c51257-0307-1b15-0005-0a3e00181aea
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_organizational_assignment
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0001
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_organizational_assignment", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.157889995+00:00
-- finished_at: 2026-06-15T19:03:09.899616030+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_personal_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181af6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_personal_data
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PERNR AS PERSONNEL_NUMBER,
    ENDDA AS END_DATE,
    BEGDA AS START_DATE,
    NACHN AS LAST_NAME,
    VORNA AS FIRST_NAME,
    GBDAT AS DATE_OF_BIRTH,
    GESCH AS GENDER
FROM DEMO.SAP_ECC.PA0002
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_personal_data", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.219381894+00:00
-- finished_at: 2026-06-15T19:03:09.934941280+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_requirement_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181afa
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.transfer_requirement_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTBK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.transfer_requirement_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.665047780+00:00
-- finished_at: 2026-06-15T19:03:09.939616320+00:00
-- elapsed: 2.3s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 13 at position 4
invalid identifier 'ZUESSION'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_company_codes
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.vendor_company_codes
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    LIFNR AS VENDOR_NUMBER,
    BUKRS AS COMPANY_CODE,
    PERNR AS PERSONNEL_NUMBER,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY,
    AKONT AS RECONCILIATION_ACCOUNT,
    ZUESSION AS SORT_KEY,
    ZTERM AS PAYMENT_TERMS
FROM DEMO.SAP_ECC.LFB1
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.vendor_company_codes", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.673838048+00:00
-- finished_at: 2026-06-15T19:03:10.000417641+00:00
-- elapsed: 2.3s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'PLNUM'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.planned_orders
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.planned_orders
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PLNUM AS PLANNED_ORDER_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    WERKS AS PLANT,
    GESSION AS PLANNED_QUANTITY,
    MEINS AS UNIT_OF_MEASURE,
    PEDTR AS PLANNED_FINISH_DATE,
    PESSION AS PLANNED_START_DATE
FROM DEMO.SAP_ECC.PLAF
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.planned_orders", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.255329494+00:00
-- finished_at: 2026-06-15T19:03:10.003438016+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.idoc_data_records
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b02
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.idoc_data_records
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.EDID4
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.idoc_data_records", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.146593200+00:00
-- finished_at: 2026-06-15T19:03:10.204908951+00:00
-- elapsed: 3.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181af2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.customer_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAD
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.customer_cleared_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.255536892+00:00
-- finished_at: 2026-06-15T19:03:10.553692763+00:00
-- elapsed: 3.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_planned_working_time
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b06
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_planned_working_time
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0007
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_planned_working_time", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.329763086+00:00
-- finished_at: 2026-06-15T19:03:12.197479823+00:00
-- elapsed: 3.9s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'TKNUM'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_headers
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_headers
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    TKNUM AS SHIPMENT_NUMBER,
    SDABW AS SPECIAL_PROCESSING,
    VSART AS SHIPPING_TYPE,
    TDLNR AS FORWARDING_AGENT,
    DESSION AS SHIPMENT_DATE
FROM DEMO.SAP_ECC.VTTK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.846748321+00:00
-- finished_at: 2026-06-15T19:03:12.197883578+00:00
-- elapsed: 4.4s
-- outcome: error
-- error vendor code: 2003
-- error message: NotFound: [Snowflake] 002003 (42S02): SQL compilation error:
Object 'DEMO.SAP_ECC.HRP1002' does not exist or not authorized.
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_descriptions
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_org_descriptions
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.HRP1002
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_org_descriptions", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.324134449+00:00
-- finished_at: 2026-06-15T19:03:12.197926051+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.goods_movements
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b6e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.334580358+00:00
-- finished_at: 2026-06-15T19:03:12.202683902+00:00
-- elapsed: 3.9s
-- outcome: error
-- error vendor code: 2003
-- error message: NotFound: [Snowflake] 002003 (42S02): SQL compilation error:
Object 'DEMO.SAP_ECC.AGR_TEXTS' does not exist or not authorized.
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.role_texts
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.role_texts
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AGR_TEXTS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.role_texts", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.355731507+00:00
-- finished_at: 2026-06-15T19:03:12.202827815+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.user_logon_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b0a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.user_logon_data
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.USR02
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.user_logon_data", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.903042805+00:00
-- finished_at: 2026-06-15T19:03:12.202987648+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_operations
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b56
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.production_operations
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AFVC
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.production_operations", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.783944707+00:00
-- finished_at: 2026-06-15T19:03:12.204783884+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.plants
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b36
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.plants
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    WERKS AS PLANT_CODE,
    NAME1 AS PLANT_NAME,
    LAND1 AS COUNTRY,
    SPRAS AS LANGUAGE,
    VKORG AS SALES_ORGANIZATION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    SPART AS DIVISION,
    VSTEL AS SHIPPING_POINT,
    ADRNR AS ADDRESS_NUMBER
FROM DEMO.SAP_ECC.T001W
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.plants", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.847672114+00:00
-- finished_at: 2026-06-15T19:03:12.204795278+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_sales_areas
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b42
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.customer_sales_areas
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    KUNNR AS CUSTOMER_NUMBER,
    VKORG AS SALES_ORGANIZATION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    SPART AS DIVISION,
    KDGRP AS CUSTOMER_GROUP,
    BZIRK AS SALES_DISTRICT,
    WAERS AS CURRENCY,
    KALKS AS PRICING_PROCEDURE,
    VERSG AS STATISTICS_GROUP,
    LPRIO AS DELIVERY_PRIORITY,
    VWERK AS SUPPLYING_PLANT,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.KNVV
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.customer_sales_areas", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.888138133+00:00
-- finished_at: 2026-06-15T19:03:12.204808209+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_objects
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b4a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_org_objects
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PLVAR AS PLAN_VERSION,
    OTYPE AS OBJECT_TYPE,
    OBJID AS OBJECT_ID,
    BEGDA AS START_DATE,
    ENDDA AS END_DATE,
    STEXT AS OBJECT_NAME,
    LANGU AS LANGUAGE
FROM DEMO.SAP_ECC.HRP1000
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_org_objects", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.732428114+00:00
-- finished_at: 2026-06-15T19:03:12.204971427+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_org_relationships
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b22
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_org_relationships
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.HRP1001
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_org_relationships", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.827467855+00:00
-- finished_at: 2026-06-15T19:03:12.204943924+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.independent_requirements_schedule
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b3a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.independent_requirements_schedule
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PBED
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.independent_requirements_schedule", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.322022484+00:00
-- finished_at: 2026-06-15T19:03:12.205030779+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.handling_units
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b62
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:07.673430729+00:00
-- finished_at: 2026-06-15T19:03:12.205053515+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.deliveries
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b16
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.deliveries
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS DELIVERY_NUMBER,
    LFART AS DELIVERY_TYPE,
    LFDAT AS DELIVERY_DATE,
    WADAT AS PLANNED_GI_DATE,
    WADAT_IST AS ACTUAL_GI_DATE,
    VSTEL AS SHIPPING_POINT,
    ROUTE AS ROUTE,
    KUNNR AS SHIP_TO_CUSTOMER,
    KUNAG AS SOLD_TO_CUSTOMER,
    VKORG AS SALES_ORGANIZATION,
    NETWR AS NET_VALUE,
    BTGEW AS NET_WEIGHT,
    GEWEI AS WEIGHT_UNIT,
    WAERK AS CURRENCY,
    WERKS AS PLANT_CODE,
    KODAT AS PICKING_DATE,
    TDDAT AS TRANSPORT_PLAN_DATE,
    FKDAT AS BILLING_DATE,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.LIKP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.deliveries", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.749527784+00:00
-- finished_at: 2026-06-15T19:03:12.205815684+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customer_open_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b2a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.customer_open_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSID
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.customer_open_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.890933832+00:00
-- finished_at: 2026-06-15T19:03:12.206804659+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_order_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b52
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.transfer_order_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTAP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.transfer_order_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.865322279+00:00
-- finished_at: 2026-06-15T19:03:12.208452749+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendors
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b46
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.vendors
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    LIFNR AS VENDOR_NUMBER,
    NAME1 AS VENDOR_NAME,
    NAME2 AS VENDOR_NAME_2,
    LAND1 AS COUNTRY,
    ORT01 AS CITY,
    PSTLZ AS POSTAL_CODE,
    REGIO AS REGION,
    STRAS AS STREET,
    TELF1 AS TELEPHONE,
    SPRAS AS LANGUAGE,
    KTOKK AS ACCOUNT_GROUP,
    LOEVM AS DELETION_FLAG,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.LFA1
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.vendors", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.731608086+00:00
-- finished_at: 2026-06-15T19:03:12.208446481+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_tasklist_assignment
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b26
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.material_tasklist_assignment
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MAPL
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.material_tasklist_assignment", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.324064969+00:00
-- finished_at: 2026-06-15T19:03:12.208495420+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.billing_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b66
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:07.723958428+00:00
-- finished_at: 2026-06-15T19:03:12.208535155+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_additional_payments
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b1e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_additional_payments
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0015
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_additional_payments", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.888837552+00:00
-- finished_at: 2026-06-15T19:03:12.211835899+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b4e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchase_orders
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    EBELN AS PO_NUMBER,
    BSART AS DOCUMENT_TYPE,
    BSTYP AS DOCUMENT_CATEGORY,
    LOEKZ AS DELETION_FLAG,
    LIFNR AS VENDOR_NUMBER,
    SPRAS AS LANGUAGE,
    ZTERM AS PAYMENT_TERMS,
    EKORG AS PURCHASING_ORG,
    EKGRP AS PURCHASING_GROUP,
    WAERS AS CURRENCY,
    BEDAT AS PO_DATE,
    KDATB AS VALIDITY_START,
    KDATE AS VALIDITY_END,
    ANGDT AS QUOTATION_DEADLINE,
    INCO1 AS INCOTERMS,
    INCO2 AS INCOTERMS_LOCATION,
    RLWRT AS TOTAL_VALUE,
    AEDAT AS CHANGED_DATE,
    ERNAM AS CREATED_BY,
    BUKRS AS COMPANY_CODE
FROM DEMO.SAP_ECC.EKKO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchase_orders", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.652198100+00:00
-- finished_at: 2026-06-15T19:03:12.211813682+00:00
-- elapsed: 4.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_operation_values
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b0e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.production_operation_values
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AFVV
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.production_operation_values", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.775781866+00:00
-- finished_at: 2026-06-15T19:03:12.211817930+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.idoc_control_records
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b2e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.idoc_control_records
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.EDIDC
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.idoc_control_records", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.328169615+00:00
-- finished_at: 2026-06-15T19:03:12.211820702+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b6a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.321512043+00:00
-- finished_at: 2026-06-15T19:03:12.211823898+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_order_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b5e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:07.777887611+00:00
-- finished_at: 2026-06-15T19:03:12.211820499+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_stages
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b32
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_stages
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VTTS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_stages", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:07.934644589+00:00
-- finished_at: 2026-06-15T19:03:12.286805255+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.product_cost_estimates
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b5a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.product_cost_estimates
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.KEKO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.product_cost_estimates", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.331828737+00:00
-- finished_at: 2026-06-15T19:03:12.642896427+00:00
-- elapsed: 4.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.transfer_order_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b82
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.transfer_order_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LTAK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.transfer_order_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.337482130+00:00
-- finished_at: 2026-06-15T19:03:12.708999622+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.warehouse_storage_bins
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b86
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.warehouse_storage_bins
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LAGP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.warehouse_storage_bins", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.341703928+00:00
-- finished_at: 2026-06-15T19:03:12.710744823+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_reservations
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b7e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.production_reservations
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RESB
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.production_reservations", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.335413705+00:00
-- finished_at: 2026-06-15T19:03:12.729476102+00:00
-- elapsed: 4.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.copa_plan_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b8a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.copa_plan_line_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CE2XXXX
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.copa_plan_line_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.324782834+00:00
-- finished_at: 2026-06-15T19:03:12.774843523+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.application_log_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b9a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.330292799+00:00
-- finished_at: 2026-06-15T19:03:12.837283413+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_addresses
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b9e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.328932478+00:00
-- finished_at: 2026-06-15T19:03:12.846072973+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_order_schedules
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ba2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.330799252+00:00
-- finished_at: 2026-06-15T19:03:12.879524691+00:00
-- elapsed: 4.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_cost_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ba6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.337482030+00:00
-- finished_at: 2026-06-15T19:03:12.893002182+00:00
-- elapsed: 4.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_absence_quotas
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b92
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_absence_quotas
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA2006
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_absence_quotas", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.343354767+00:00
-- finished_at: 2026-06-15T19:03:12.905235846+00:00
-- elapsed: 4.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_partners
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b8e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_partners
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    PARVW AS PARTNER_FUNCTION,
    KUNNR AS CUSTOMER_NUMBER,
    POSNR AS ITEM_NUMBER,
    LIFNR AS VENDOR_NUMBER,
    ADRNR AS ADDRESS_NUMBER
FROM DEMO.SAP_ECC.VBPA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_partners", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.330247574+00:00
-- finished_at: 2026-06-15T19:03:12.935075177+00:00
-- elapsed: 4.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.delivery_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181baa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.329837025+00:00
-- finished_at: 2026-06-15T19:03:13.005334458+00:00
-- elapsed: 4.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.goods_receipt_messages
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bae
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.329620081+00:00
-- finished_at: 2026-06-15T19:03:13.015011498+00:00
-- elapsed: 4.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.serial_number_documents
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bb2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.329504565+00:00
-- finished_at: 2026-06-15T19:03:13.041757628+00:00
-- elapsed: 4.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.asset_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bb6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.330246613+00:00
-- finished_at: 2026-06-15T19:03:13.073397042+00:00
-- elapsed: 4.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.copa_actual_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bba
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.335795400+00:00
-- finished_at: 2026-06-15T19:03:13.086567453+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.gl_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bbe
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.339544504+00:00
-- finished_at: 2026-06-15T19:03:13.090369435+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.complaints
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bc2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.338306+00:00
-- finished_at: 2026-06-15T19:03:13.124148299+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.vendor_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b76
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.vendor_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.vendor_cleared_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.338508453+00:00
-- finished_at: 2026-06-15T19:03:13.172688418+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.gl_actual_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bca
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.329765347+00:00
-- finished_at: 2026-06-15T19:03:13.177249228+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181b96
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_orders
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    AUART AS ORDER_TYPE,
    ERDAT AS ORDER_DATE,
    VKORG AS SALES_ORGANIZATION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    SPART AS DIVISION,
    KUNNR AS CUSTOMER_NUMBER,
    NETWR AS NET_VALUE,
    WAERK AS CURRENCY,
    BSTNK AS CUSTOMER_PO_NUMBER,
    VBTYP AS DOCUMENT_CATEGORY,
    GUEBG AS REQUESTED_DELIVERY_DATE,
    VDATU AS PRICING_DATE,
    LIFSK AS DELIVERY_BLOCK,
    FAKSK AS BILLING_BLOCK,
    BUKRS_VF AS COMPANY_CODE,
    ERDAT AS CREATED_DATE,
    ERZET AS CREATED_TIME,
    ERNAM AS CREATED_BY,
    AEDAT AS CHANGED_DATE
FROM DEMO.SAP_ECC.VBAK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_orders", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.339033997+00:00
-- finished_at: 2026-06-15T19:03:13.183748894+00:00
-- elapsed: 4.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_pricing_conditions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bc6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.336345952+00:00
-- finished_at: 2026-06-15T19:03:13.199708931+00:00
-- elapsed: 4.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.assets
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bce
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.337724557+00:00
-- finished_at: 2026-06-15T19:03:13.227847844+00:00
-- elapsed: 4.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.routings
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bd2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.343414732+00:00
-- finished_at: 2026-06-15T19:03:13.252241942+00:00
-- elapsed: 4.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.bill_of_materials
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bd6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.364533849+00:00
-- finished_at: 2026-06-15T19:03:15.022130875+00:00
-- elapsed: 6.7s
-- outcome: error
-- error vendor code: 2003
-- error message: NotFound: [Snowflake] 002003 (42S02): SQL compilation error:
Object 'DEMO.SAP_ECC.CSKU' does not exist or not authorized.
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.cost_elements
-- query_id: not available
-- desc: execute adapter call
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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.cost_elements", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.363358842+00:00
-- finished_at: 2026-06-15T19:03:15.022251233+00:00
-- elapsed: 6.7s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'G.INFNR'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchasing_info_records
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchasing_info_records
    
    
    
    as (SELECT
    g.MANDT AS CLIENT,
    g.INFNR AS INFO_RECORD_NUMBER,
    g.MATNR AS MATERIAL_NUMBER,
    g.LIFNR AS VENDOR_NUMBER,
    g.LOEKZ AS DELETION_INDICATOR,
    o.EKORG AS PURCHASING_ORGANIZATION,
    o.WERKS AS PLANT,
    o.NETPR AS NET_PRICE,
    o.WAERS AS CURRENCY,
    o.PEINH AS PRICE_UNIT
FROM DEMO.SAP_ECC.EINA g
LEFT JOIN DEMO.SAP_ECC.EINE o
    ON g.MANDT = o.MANDT AND g.INFNR = o.INFNR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchasing_info_records", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.364969991+00:00
-- finished_at: 2026-06-15T19:03:15.022431082+00:00
-- elapsed: 6.7s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'PERNR'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_absences
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_absences
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PERNR AS PERSONNEL_NUMBER,
    ENDDA AS END_DATE,
    BEGDA AS START_DATE,
    SUBTY AS ABSENCE_TYPE,
    ABESSION AS ABSENCE_HOURS
FROM DEMO.SAP_ECC.PA2001
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_absences", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.359038897+00:00
-- finished_at: 2026-06-15T19:03:15.022445392+00:00
-- elapsed: 6.7s
-- outcome: error
-- error vendor code: 2003
-- error message: NotFound: [Snowflake] 002003 (42S02): SQL compilation error:
Object 'DEMO.SAP_ECC.TJ02T' does not exist or not authorized.
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.object_status
-- query_id: not available
-- desc: execute adapter call
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

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.object_status", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.358223273+00:00
-- finished_at: 2026-06-15T19:03:15.022481523+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.application_log_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c16
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.application_log_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BALHDR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.application_log_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.351190184+00:00
-- finished_at: 2026-06-15T19:03:15.023990458+00:00
-- elapsed: 6.7s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 15 at position 4
invalid identifier 'WAESSION'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_basic_pay
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_basic_pay
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PERNR AS PERSONNEL_NUMBER,
    ENDDA AS END_DATE,
    BEGDA AS START_DATE,
    TRFAR AS PAY_SCALE_TYPE,
    TRFGB AS PAY_SCALE_AREA,
    TRFGR AS PAY_SCALE_GROUP,
    TRFST AS PAY_SCALE_LEVEL,
    ANSAL AS ANNUAL_SALARY,
    WAESSION AS CURRENCY
FROM DEMO.SAP_ECC.PA0008
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_basic_pay", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.354441149+00:00
-- finished_at: 2026-06-15T19:03:15.025235039+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_status
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c0a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_status
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    GBSTK AS OVERALL_STATUS,
    LFSTK AS DELIVERY_STATUS,
    FKSTK AS BILLING_STATUS,
    ABSTK AS REJECTION_STATUS,
    BESTK AS CONFIRMATION_STATUS,
    COSTA AS ORDER_COMPLETION_STATUS,
    UVALL AS OVERALL_PROCESSING
FROM DEMO.SAP_ECC.VBUK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_status", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.361812418+00:00
-- finished_at: 2026-06-15T19:03:15.027354641+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.mrp_table_entries
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c1e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.mrp_table_entries
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MDTB
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.mrp_table_entries", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.337776352+00:00
-- finished_at: 2026-06-15T19:03:15.027357859+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_business_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bf2
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.334607570+00:00
-- finished_at: 2026-06-15T19:03:15.027557044+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_ledger_closing
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bde
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.material_ledger_closing
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MLCD
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.material_ledger_closing", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:09.853746931+00:00
-- finished_at: 2026-06-15T19:03:15.027617131+00:00
-- elapsed: 5.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c42
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.354217616+00:00
-- finished_at: 2026-06-15T19:03:15.027636675+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_schedules
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c0e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_schedules
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    POSNR AS ITEM_NUMBER,
    ETENR AS SCHEDULE_LINE_NUMBER,
    EDATU AS DELIVERY_DATE,
    WMENG AS ORDER_QUANTITY,
    BMENG AS CONFIRMED_QUANTITY,
    VRKME AS SALES_UNIT,
    LMENG AS DELIVERED_QUANTITY,
    LDDAT AS LOADING_DATE,
    TDDAT AS TRANSPORT_PLAN_DATE,
    WADAT AS GOODS_ISSUE_DATE,
    MBDAT AS MATERIAL_AVAILABILITY_DATE
FROM DEMO.SAP_ECC.VBEP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_schedules", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.357069475+00:00
-- finished_at: 2026-06-15T19:03:15.027665314+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.cost_centers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c12
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.cost_centers
    
    
    
    as (SELECT
    c.MANDT AS CLIENT,
    c.KOKRS AS CONTROLLING_AREA,
    c.KOSTL AS COST_CENTER,
    c.DATBI AS VALID_TO,
    c.BUKRS AS COMPANY_CODE,
    c.KOSAR AS COST_CENTER_CATEGORY,
    t.KTEXT AS COST_CENTER_NAME,
    t.LTEXT AS COST_CENTER_DESCRIPTION
FROM DEMO.SAP_ECC.CSKS c
LEFT JOIN DEMO.SAP_ECC.CSKT t
    ON c.MANDT = t.MANDT AND c.KOKRS = t.KOKRS AND c.KOSTL = t.KOSTL AND c.DATBI = t.DATBI
    AND t.SPRAS = 'E'
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.cost_centers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.362571854+00:00
-- finished_at: 2026-06-15T19:03:15.027710957+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c22
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.change_document_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CDHDR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.change_document_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.348703569+00:00
-- finished_at: 2026-06-15T19:03:15.028652574+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.billing_documents
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bf6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.billing_documents
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS BILLING_DOCUMENT_NUMBER,
    FKART AS BILLING_TYPE,
    FKDAT AS BILLING_DATE,
    KUNRG AS PAYER_CUSTOMER,
    KUNAG AS SOLD_TO_CUSTOMER,
    VKORG AS SALES_ORGANIZATION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    SPART AS DIVISION,
    NETWR AS NET_VALUE,
    MWSBK AS TAX_AMOUNT,
    WAERK AS CURRENCY,
    BUKRS AS COMPANY_CODE,
    LAND1 AS COUNTRY,
    RFBSK AS ACCOUNTING_STATUS,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.VBRK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.billing_documents", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.336134073+00:00
-- finished_at: 2026-06-15T19:03:15.029716529+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_plant_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bee
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.336544280+00:00
-- finished_at: 2026-06-15T19:03:15.032804220+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bda
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.350151524+00:00
-- finished_at: 2026-06-15T19:03:15.032787266+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.bom_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bfe
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.bom_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    STLNR AS BOM_NUMBER,
    STLKN AS ITEM_NODE,
    POSNR AS ITEM_NUMBER,
    POSTP AS ITEM_CATEGORY,
    IDNRK AS COMPONENT_NUMBER,
    MENGE AS QUANTITY,
    MEINS AS UNIT_OF_MEASURE
FROM DEMO.SAP_ECC.STPO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.bom_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.341173191+00:00
-- finished_at: 2026-06-15T19:03:15.032959997+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.role_user_assignments
-- query_id: 01c51257-0307-1b15-0005-0a3e00181be2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.role_user_assignments
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.AGR_USERS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.role_user_assignments", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:09.210237293+00:00
-- finished_at: 2026-06-15T19:03:15.037644205+00:00
-- elapsed: 5.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.accounting_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c3e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.349183282+00:00
-- finished_at: 2026-06-15T19:03:15.037774602+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_actions
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c02
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_actions
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PERNR AS PERSONNEL_NUMBER,
    ENDDA AS END_DATE,
    BEGDA AS START_DATE,
    MASSN AS ACTION_TYPE,
    MASSG AS ACTION_REASON,
    STAT2 AS EMPLOYMENT_STATUS
FROM DEMO.SAP_ECC.PA0000
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_actions", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.343575083+00:00
-- finished_at: 2026-06-15T19:03:15.037847474+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.quality_notifications
-- query_id: 01c51257-0307-1b15-0005-0a3e00181be6
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.342867666+00:00
-- finished_at: 2026-06-15T19:03:15.038961638+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_cost_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bfa
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.344684392+00:00
-- finished_at: 2026-06-15T19:03:15.040550831+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181bea
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:08.363721128+00:00
-- finished_at: 2026-06-15T19:03:15.059208138+00:00
-- elapsed: 6.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.product_cost_components
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c2a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.product_cost_components
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.KEPH
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.product_cost_components", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.364583595+00:00
-- finished_at: 2026-06-15T19:03:15.131164862+00:00
-- elapsed: 6.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_document_flow
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c32
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_document_flow
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VTFA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_document_flow", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:08.428292044+00:00
-- finished_at: 2026-06-15T19:03:15.315595174+00:00
-- elapsed: 6.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.accounting_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c3a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.accounting_document_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    BUKRS AS COMPANY_CODE,
    BELNR AS DOCUMENT_NUMBER,
    GJAHR AS FISCAL_YEAR,
    BUZEI AS LINE_ITEM,
    KOART AS ACCOUNT_TYPE,
    SHKZG AS DEBIT_CREDIT_INDICATOR,
    DMBTR AS LOCAL_CURRENCY_AMOUNT,
    WRBTR AS DOCUMENT_CURRENCY_AMOUNT,
    HKONT AS GL_ACCOUNT,
    KOSTL AS COST_CENTER,
    MATNR AS MATERIAL_NUMBER
FROM DEMO.SAP_ECC.BSEG
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.accounting_document_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.207356886+00:00
-- finished_at: 2026-06-15T19:03:15.400826530+00:00
-- elapsed: 3.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.handling_units
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c4a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.handling_units
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.LEIN
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.handling_units", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.777222758+00:00
-- finished_at: 2026-06-15T19:03:15.823419121+00:00
-- elapsed: 3.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.application_log_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c5a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.application_log_data
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BALDAT
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.application_log_data", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.214925690+00:00
-- finished_at: 2026-06-15T19:03:15.883372795+00:00
-- elapsed: 3.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.billing_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c52
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.billing_document_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS BILLING_DOCUMENT_NUMBER,
    POSNR AS ITEM_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    MATKL AS MATERIAL_GROUP,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    CHARG AS BATCH_NUMBER,
    FKIMG AS BILLED_QUANTITY,
    VRKME AS SALES_UNIT,
    MEINS AS BASE_UNIT,
    NETWR AS NET_VALUE,
    BRGEW AS GROSS_WEIGHT,
    NTGEW AS NET_WEIGHT,
    GEWEI AS WEIGHT_UNIT,
    PSTYV AS ITEM_CATEGORY,
    SPART AS DIVISION,
    VSTEL AS SHIPPING_POINT,
    AUBEL AS REF_SALES_ORDER,
    AUPOS AS REF_SALES_ORDER_ITEM,
    VGBEL AS REF_DELIVERY,
    VGPOS AS REF_DELIVERY_ITEM,
    VBELV AS REF_PRECEDING_DOC,
    POSNV AS REF_PRECEDING_ITEM,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.VBRP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.billing_document_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.215653414+00:00
-- finished_at: 2026-06-15T19:03:15.906721516+00:00
-- elapsed: 3.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_order_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c56
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.production_order_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    AUFNR AS ORDER_NUMBER,
    POSNR AS ITEM_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    LGORT AS STORAGE_LOCATION,
    PSMNG AS PLANNED_QUANTITY,
    WEMNG AS DELIVERED_QUANTITY,
    AMEIN AS UNIT_OF_MEASURE,
    LTRMI AS PLANNED_FINISH_DATE
FROM DEMO.SAP_ECC.AFPO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.production_order_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.200710759+00:00
-- finished_at: 2026-06-15T19:03:15.946605151+00:00
-- elapsed: 3.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.goods_movements
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c46
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.goods_movements
    
    
    
    as (SELECT
    ms.MANDT AS CLIENT,
    ms.MBLNR AS DOCUMENT_NUMBER,
    ms.MJAHR AS FISCAL_YEAR,
    ms.ZEILE AS ITEM_NUMBER,
    ms.BWART AS MOVEMENT_TYPE,
    ms.MATNR AS MATERIAL_NUMBER,
    ms.WERKS AS PLANT_CODE,
    ms.LGORT AS STORAGE_LOCATION,
    ms.CHARG AS BATCH_NUMBER,
    ms.MENGE AS QUANTITY,
    ms.MEINS AS UNIT_OF_MEASURE,
    ms.DMBTR AS AMOUNT_LOCAL,
    ms.WAERS AS CURRENCY,
    ms.SHKZG AS DEBIT_CREDIT_IND,
    ms.SOBKZ AS SPECIAL_STOCK_IND,
    ms.LIFNR AS VENDOR_NUMBER,
    ms.KUNNR AS CUSTOMER_NUMBER,
    ms.AUFNR AS ORDER_NUMBER,
    ms.KOSTL AS COST_CENTER,
    mk.BUDAT AS POSTING_DATE,
    mk.CPUDT AS ENTRY_DATE,
    mk.USNAM AS CREATED_BY
FROM DEMO.SAP_ECC.MSEG ms
LEFT JOIN DEMO.SAP_ECC.MKPF mk
    ON ms.MANDT = mk.MANDT AND ms.MBLNR = mk.MBLNR AND ms.MJAHR = mk.MJAHR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.goods_movements", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.044260996+00:00
-- finished_at: 2026-06-15T19:03:16.042529691+00:00
-- elapsed: 3.0s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'BUKRS'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.asset_line_items
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.asset_line_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    BUKRS AS COMPANY_CODE,
    ANLN1 AS ASSET_NUMBER,
    ANLN2 AS ASSET_SUBNUMBER,
    GJAHR AS FISCAL_YEAR,
    LNRAN AS DOCUMENT_LINE,
    AFABE AS DEPRECIATION_AREA,
    BWASL AS TRANSACTION_TYPE,
    ANBTR AS POSTED_AMOUNT,
    WAERS AS CURRENCY
FROM DEMO.SAP_ECC.ANEP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.asset_line_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.881867796+00:00
-- finished_at: 2026-06-15T19:03:16.252069826+00:00
-- elapsed: 3.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_cost_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c66
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_cost_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VFKN
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_cost_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.839729268+00:00
-- finished_at: 2026-06-15T19:03:16.271979174+00:00
-- elapsed: 3.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.hr_addresses
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c5e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.hr_addresses
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.PA0006
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.hr_addresses", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.848586820+00:00
-- finished_at: 2026-06-15T19:03:16.279759187+00:00
-- elapsed: 3.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_order_schedules
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c62
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchase_order_schedules
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    EBELN AS PO_NUMBER,
    EBELP AS ITEM_NUMBER,
    ETENR AS SCHEDULE_LINE_NUMBER,
    EINDT AS DELIVERY_DATE,
    MENGE AS SCHEDULED_QUANTITY,
    WEMNG AS DELIVERED_QUANTITY,
    SLFDT AS STATISTICS_DATE,
    BANFN AS REQUISITION_NUMBER,
    BNFPO AS REQUISITION_ITEM
FROM DEMO.SAP_ECC.EKET
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchase_order_schedules", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.214925667+00:00
-- finished_at: 2026-06-15T19:03:16.342834518+00:00
-- elapsed: 4.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.production_orders
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c4e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.production_orders
    
    
    
    as (SELECT
    afko.MANDT AS CLIENT,
    afko.AUFNR AS ORDER_NUMBER,
    aufk.AUART AS ORDER_TYPE,
    aufk.AUTYP AS ORDER_CATEGORY,
    afko.PLNBEZ AS MATERIAL_NUMBER,
    aufk.WERKS AS PRODUCTION_PLANT,
    afko.GAMNG AS TOTAL_ORDER_QUANTITY,
    afko.GASMG AS TOTAL_SCRAP_QUANTITY,
    afko.GMEIN AS UNIT_OF_MEASURE,
    afko.GSTRP AS BASIC_START_DATE,
    afko.GLTRP AS BASIC_FINISH_DATE,
    afko.FTRMS AS SCHEDULED_START_DATE,
    afko.GSTRS AS ACTUAL_START_DATE,
    afko.GLTRS AS ACTUAL_FINISH_DATE,
    afko.IGMNG AS CONFIRMED_YIELD,
    afko.IASMG AS CONFIRMED_SCRAP,
    aufk.ERDAT AS CREATED_DATE,
    aufk.ERNAM AS CREATED_BY,
    aufk.OBJNR AS OBJECT_NUMBER,
    aufk.BUKRS AS COMPANY_CODE
FROM DEMO.SAP_ECC.AFKO afko
LEFT JOIN DEMO.SAP_ECC.AUFK aufk
    ON afko.MANDT = aufk.MANDT AND afko.AUFNR = aufk.AUFNR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.production_orders", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.083986414+00:00
-- finished_at: 2026-06-15T19:03:16.394719169+00:00
-- elapsed: 3.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.materials
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c7e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:03:13.185992968+00:00
-- finished_at: 2026-06-15T19:03:16.443872588+00:00
-- elapsed: 3.3s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'KNUMV'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_pricing_conditions
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_pricing_conditions
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    KNUMV AS CONDITION_NUMBER,
    KPOSN AS CONDITION_ITEM,
    STUNR AS STEP_NUMBER,
    ZAESSION AS CONDITION_COUNTER,
    KSCHL AS CONDITION_TYPE,
    KBETR AS CONDITION_RATE,
    WAERS AS CURRENCY,
    KWERT AS CONDITION_VALUE
FROM DEMO.SAP_ECC.KONV
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_pricing_conditions", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.202025790+00:00
-- finished_at: 2026-06-15T19:03:16.498001570+00:00
-- elapsed: 3.3s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'BUKRS'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.assets
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.assets
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    BUKRS AS COMPANY_CODE,
    ANLN1 AS ASSET_NUMBER,
    ANLN2 AS ASSET_SUBNUMBER,
    ANLKL AS ASSET_CLASS,
    TXT50 AS ASSET_DESCRIPTION,
    AKTIV AS CAPITALIZATION_DATE,
    DEAKT AS DEACTIVATION_DATE,
    KOSTL AS COST_CENTER,
    WERKS AS PLANT
FROM DEMO.SAP_ECC.ANLA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.assets", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.230291952+00:00
-- finished_at: 2026-06-15T19:03:16.559541061+00:00
-- elapsed: 3.3s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 14 at position 4
invalid identifier 'ERDAT'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.routings
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.routings
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PLNTY AS ROUTING_TYPE,
    PLNNR AS ROUTING_GROUP,
    PLNAL AS GROUP_COUNTER,
    VERWE AS USAGE,
    STATU AS STATUS,
    LOEKZ AS DELETION_FLAG,
    WERKS AS PLANT_CODE,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.PLKO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.routings", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.009852894+00:00
-- finished_at: 2026-06-15T19:03:16.649532244+00:00
-- elapsed: 3.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.goods_receipt_messages
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c6e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.goods_receipt_messages
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RLGRAP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.goods_receipt_messages", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.017198319+00:00
-- finished_at: 2026-06-15T19:03:16.669059784+00:00
-- elapsed: 3.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.serial_number_documents
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c72
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.serial_number_documents
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.SER01
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.serial_number_documents", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.030590692+00:00
-- finished_at: 2026-06-15T19:03:16.707042352+00:00
-- elapsed: 1.7s
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'VBELN'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_business_data
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_business_data
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_DOCUMENT,
    POSNR AS ITEM_NUMBER,
    ZTERM AS PAYMENT_TERMS,
    INCO1 AS INCOTERMS_1,
    INCO2 AS INCOTERMS_2
FROM DEMO.SAP_ECC.VBKD
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_business_data", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.075792931+00:00
-- finished_at: 2026-06-15T19:03:16.743986827+00:00
-- elapsed: 3.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.copa_actual_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c7a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.copa_actual_line_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CE1XXXX
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.copa_actual_line_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:12.937673239+00:00
-- finished_at: 2026-06-15T19:03:16.820598679+00:00
-- elapsed: 3.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.delivery_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c6a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.delivery_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS DELIVERY_NUMBER,
    POSNR AS ITEM_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    MTART AS MATERIAL_TYPE,
    MATKL AS MATERIAL_GROUP,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    CHARG AS BATCH_NUMBER,
    LFIMG AS DELIVERY_QUANTITY,
    LGMNG AS ACTUAL_DELIVERY_QTY,
    VRKME AS SALES_UNIT,
    MEINS AS BASE_UNIT,
    NETWR AS NET_VALUE,
    BRGEW AS GROSS_WEIGHT,
    NTGEW AS NET_WEIGHT,
    GEWEI AS WEIGHT_UNIT,
    PSTYV AS ITEM_CATEGORY,
    SPART AS DIVISION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    VGBEL AS REF_SALES_ORDER,
    VGPOS AS REF_SALES_ORDER_ITEM,
    VBELV AS REF_PRECEDING_DOC,
    POSNV AS REF_PRECEDING_ITEM,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.LIPS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.delivery_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.092859533+00:00
-- finished_at: 2026-06-15T19:03:17.121192157+00:00
-- elapsed: 4.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.complaints
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c86
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.complaints
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    QMNUM AS COMPLAINT_NUMBER,
    QMART AS COMPLAINT_TYPE,
    QMTXT AS COMPLAINT_TEXT,
    PRIOK AS PRIORITY,
    ERDAT AS COMPLAINT_DATE,
    ERNAM AS REPORTED_BY_NAME,
    STRMN AS START_DATE_REQUIRED,
    STRUR AS START_TIME_REQUIRED,
    LTRMN AS END_DATE_REQUIRED,
    LTRUR AS END_TIME_REQUIRED,
    WAERS AS CURRENCY,
    AUFNR AS ORDER_NUMBER,
    KUNUM AS CUSTOMER_NUMBER,
    LIFNUM AS VENDOR_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    MATKL AS MATERIAL_GROUP,
    PRDHA AS PRODUCT_HIERARCHY,
    MAWERK AS PLANT_CODE,
    CHARG AS BATCH_NUMBER,
    SERIALNR AS SERIAL_NUMBER,
    VBELN AS SALES_ORDER_NUMBER,
    EBELN AS PURCHASE_ORDER_NUMBER,
    BSTDK AS PURCHASE_ORDER_DATE,
    VKORG AS SALES_ORGANIZATION,
    VTWEG AS DISTRIBUTION_CHANNEL,
    SPART AS DIVISION,
    LS_VBELN AS DELIVERY_NUMBER,
    RM_MATNR AS REFERENCE_MATERIAL,
    RM_WERKS AS REFERENCE_PLANT
FROM DEMO.SAP_ECC.QMEL
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.complaints", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.175325500+00:00
-- finished_at: 2026-06-15T19:03:17.163061662+00:00
-- elapsed: 4.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.gl_actual_line_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c8a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.gl_actual_line_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.FAGLFLEXA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.gl_actual_line_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.088936608+00:00
-- finished_at: 2026-06-15T19:03:17.166326283+00:00
-- elapsed: 4.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.gl_cleared_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c82
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.gl_cleared_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BSAS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.gl_cleared_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:13.254598240+00:00
-- finished_at: 2026-06-15T19:03:17.230396172+00:00
-- elapsed: 4.0s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.bill_of_materials
-- query_id: 01c51257-0307-1b15-0005-0a3e00181c9a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.bill_of_materials
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    STLNR AS BOM_NUMBER,
    STLAL AS BOM_ALTERNATIVE,
    STLTY AS BOM_USAGE,
    STLST AS BOM_STATUS,
    BMENG AS BASE_QUANTITY,
    BMEIN AS BASE_UNIT,
    ANDAT AS CREATED_DATE,
    ANNAM AS CREATED_BY
FROM DEMO.SAP_ECC.STKO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.bill_of_materials", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.030531571+00:00
-- finished_at: 2026-06-15T19:03:17.322287126+00:00
-- elapsed: 2.3s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ca2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.co_document_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COBK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.co_document_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.032195925+00:00
-- finished_at: 2026-06-15T19:03:17.476392016+00:00
-- elapsed: 2.4s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_plant_data
-- query_id: 01c51257-0307-1b15-0005-0a3e00181ca6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.material_plant_data
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    MATNR AS MATERIAL_NUMBER,
    WERKS AS PLANT_CODE,
    DISGR AS MRP_GROUP,
    DISPO AS MRP_CONTROLLER,
    DISMM AS MRP_TYPE,
    FHORI AS SCHEDULING_MARGIN_KEY,
    EKGRP AS PURCHASING_GROUP,
    MMSTA AS PLANT_MATERIAL_STATUS,
    MAABC AS ABC_INDICATOR,
    BESKZ AS PROCUREMENT_TYPE,
    SOBSL AS SPECIAL_PROCUREMENT,
    MINBE AS REORDER_POINT,
    MABST AS MAX_STOCK_LEVEL,
    LOSGR AS LOT_SIZE,
    PLIFZ AS PLANNED_DELIVERY_TIME,
    WEBAZ AS GR_PROCESSING_TIME
FROM DEMO.SAP_ECC.MARC
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.material_plant_data", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.040450498+00:00
-- finished_at: 2026-06-15T19:03:17.555377581+00:00
-- elapsed: 2.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.accounting_document_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181cae
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.accounting_document_headers
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    BUKRS AS COMPANY_CODE,
    BELNR AS DOCUMENT_NUMBER,
    GJAHR AS FISCAL_YEAR,
    BLART AS DOCUMENT_TYPE,
    BUDAT AS POSTING_DATE,
    BLDAT AS DOCUMENT_DATE,
    WAERS AS CURRENCY,
    USNAM AS USER_NAME
FROM DEMO.SAP_ECC.BKPF
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.accounting_document_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.035953253+00:00
-- finished_at: 2026-06-15T19:03:17.605318727+00:00
-- elapsed: 2.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181caa
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.co_document_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COEP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.co_document_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.041682037+00:00
-- finished_at: 2026-06-15T19:03:17.725273405+00:00
-- elapsed: 2.7s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_cost_headers
-- query_id: 01c51257-0307-1b15-0005-0a3e00181cb2
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_cost_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.VFKP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_cost_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.045133015+00:00
-- finished_at: 2026-06-15T19:03:17.825219302+00:00
-- elapsed: 2.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_document_items
-- query_id: 01c51257-0307-1b15-0005-0a3e00181cba
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.change_document_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.CDPOS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.change_document_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:15.044898242+00:00
-- finished_at: 2026-06-15T19:03:17.968443765+00:00
-- elapsed: 2.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.quality_notifications
-- query_id: 01c51257-0307-1b15-0005-0a3e00181cb6
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.quality_notifications
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.QMEL
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.quality_notifications", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:03:16.397193973+00:00
-- finished_at: 2026-06-15T19:03:18.162887714+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.materials
-- query_id: 01c51257-0307-1b15-0005-0a3e00181cbe
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.materials
    
    
    
    as (SELECT
    m.MANDT AS CLIENT,
    m.MATNR AS MATERIAL_NUMBER,
    t.MAKTX AS MATERIAL_DESCRIPTION,
    m.MTART AS MATERIAL_TYPE,
    m.MATKL AS MATERIAL_GROUP,
    m.MEINS AS BASE_UNIT_OF_MEASURE,
    m.BRGEW AS GROSS_WEIGHT,
    m.NTGEW AS NET_WEIGHT,
    m.GEWEI AS WEIGHT_UNIT,
    m.SPART AS DIVISION,
    m.PRDHA AS PRODUCT_HIERARCHY,
    m.BISMT AS OLD_MATERIAL_NUMBER,
    m.MSTAE AS CROSS_PLANT_STATUS,
    m.ERNAM AS CREATED_BY,
    m.LAEDA AS LAST_CHANGE_DATE
FROM DEMO.SAP_ECC.MARA m
LEFT JOIN DEMO.SAP_ECC.MAKT t
    ON m.MANDT = t.MANDT AND m.MATNR = t.MATNR
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.materials", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.044671061+00:00
-- finished_at: 2026-06-15T19:05:32.264947741+00:00
-- elapsed: 220ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_order_history
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e12
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.054304145+00:00
-- finished_at: 2026-06-15T19:05:32.297933183+00:00
-- elapsed: 243ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_pointers
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e1e
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.121332890+00:00
-- finished_at: 2026-06-15T19:05:32.357356375+00:00
-- elapsed: 236ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_bom_links
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e32
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.120767136+00:00
-- finished_at: 2026-06-15T19:05:32.370936348+00:00
-- elapsed: 250ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.serial_number_objects
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e2a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.223815984+00:00
-- finished_at: 2026-06-15T19:05:32.429405204+00:00
-- elapsed: 205ms
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 7 at position 4
invalid identifier 'TKNUM'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.shipment_items
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.shipment_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    TKNUM AS SHIPMENT_NUMBER,
    TPNUM AS ITEM_NUMBER,
    VBELN AS DELIVERY_NUMBER
FROM DEMO.SAP_ECC.VTTP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.shipment_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.222680736+00:00
-- finished_at: 2026-06-15T19:05:32.432425018+00:00
-- elapsed: 209ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_item_status
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e42
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.267780470+00:00
-- finished_at: 2026-06-15T19:05:32.437362931+00:00
-- elapsed: 169ms
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 9 at position 4
invalid identifier 'ZEESSION'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_order_history
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchase_order_history
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    EBELN AS PO_NUMBER,
    EBELP AS ITEM_NUMBER,
    ZEESSION AS SEQUENTIAL_NUMBER,
    VGABE AS TRANSACTION_TYPE,
    BEWTP AS POSTING_TYPE,
    BWART AS MOVEMENT_TYPE,
    BUDAT AS POSTING_DATE,
    MENGE AS QUANTITY,
    BPMNG AS PO_QUANTITY,
    DMBTR AS AMOUNT_LOCAL,
    WAERS AS CURRENCY,
    AREWR AS GR_IR_AMOUNT,
    SHKZG AS DEBIT_CREDIT_IND,
    BELNR AS ACCOUNTING_DOC,
    GJAHR AS FISCAL_YEAR,
    LFBNR AS REF_DOCUMENT,
    LFGJA AS REF_FISCAL_YEAR,
    LFPOS AS REF_ITEM,
    ERNAM AS CREATED_BY,
    CPUDT AS ENTRY_DATE
FROM DEMO.SAP_ECC.EKBE
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchase_order_history", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.223638801+00:00
-- finished_at: 2026-06-15T19:05:32.486340480+00:00
-- elapsed: 262ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_items
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e4a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.223014058+00:00
-- finished_at: 2026-06-15T19:05:32.516552737+00:00
-- elapsed: 293ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_totals_internal
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e46
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.285651468+00:00
-- finished_at: 2026-06-15T19:05:32.534290204+00:00
-- elapsed: 248ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.document_flow
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e5a
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.353543218+00:00
-- finished_at: 2026-06-15T19:05:32.573005503+00:00
-- elapsed: 219ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_totals_external
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e62
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.353946773+00:00
-- finished_at: 2026-06-15T19:05:32.576293435+00:00
-- elapsed: 222ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.routing_operations
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e66
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.377149949+00:00
-- finished_at: 2026-06-15T19:05:32.704417305+00:00
-- elapsed: 327ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customers
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e76
-- desc: get_relation > list_relations call
SHOW OBJECTS IN SCHEMA "DEMO"."SILVER_SILVER" LIMIT 10000;
-- created_at: 2026-06-15T19:05:32.162766027+00:00
-- finished_at: 2026-06-15T19:05:33.149525248+00:00
-- elapsed: 986ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.invoice_receipt_headers
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e3e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.invoice_receipt_headers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RBKP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.invoice_receipt_headers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.300305350+00:00
-- finished_at: 2026-06-15T19:05:33.232097884+00:00
-- elapsed: 931ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.change_pointers
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e5e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.change_pointers
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.BDCP2
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.change_pointers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.367446103+00:00
-- finished_at: 2026-06-15T19:05:33.271441493+00:00
-- elapsed: 903ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.invoice_receipt_items
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e6e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.invoice_receipt_items
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.RSEG
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.invoice_receipt_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.224321707+00:00
-- finished_at: 2026-06-15T19:05:33.289653983+00:00
-- elapsed: 1.1s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.purchase_order_items
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e56
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.purchase_order_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    EBELN AS PO_NUMBER,
    EBELP AS ITEM_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    TXZ01 AS SHORT_TEXT,
    MENGE AS QUANTITY,
    MEINS AS UNIT_OF_MEASURE,
    NETPR AS NET_PRICE,
    PEINH AS PRICE_UNIT,
    NETWR AS NET_VALUE,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    MATKL AS MATERIAL_GROUP,
    PSTYP AS ITEM_CATEGORY,
    KNTTP AS ACCOUNT_CATEGORY,
    LOEKZ AS DELETION_FLAG,
    ELIKZ AS DELIVERY_COMPLETED,
    RETPO AS RETURNS_ITEM,
    BPRME AS ORDER_PRICE_UNIT
FROM DEMO.SAP_ECC.EKPO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.purchase_order_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.359832318+00:00
-- finished_at: 2026-06-15T19:05:33.290964477+00:00
-- elapsed: 931ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.material_bom_links
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e6a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.material_bom_links
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.MAST
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.material_bom_links", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.373249740+00:00
-- finished_at: 2026-06-15T19:05:33.292392652+00:00
-- elapsed: 919ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.serial_number_objects
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e72
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.serial_number_objects
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.OBJK
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.serial_number_objects", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.578509261+00:00
-- finished_at: 2026-06-15T19:05:33.366355397+00:00
-- elapsed: 787ms
-- outcome: error
-- error vendor code: 904
-- error message: Internal: [Snowflake] 000904 (42000): SQL compilation error: error line 9 at position 4
invalid identifier 'PLNAL'
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.routing_operations
-- query_id: not available
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.routing_operations
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    PLNTY AS ROUTING_TYPE,
    PLNNR AS ROUTING_GROUP,
    PLNAL AS GROUP_COUNTER,
    VESSION AS OPERATION_NUMBER,
    ARBID AS WORK_CENTER_ID,
    WERKS AS PLANT_CODE,
    STEUS AS CONTROL_KEY,
    LTXA1 AS OPERATION_TEXT,
    VGW01 AS SETUP_TIME,
    VGW02 AS MACHINE_TIME,
    VGW03 AS LABOR_TIME,
    VGE01 AS SETUP_TIME_UNIT,
    VGE02 AS MACHINE_TIME_UNIT,
    VGE03 AS LABOR_TIME_UNIT,
    BMSCH AS BASE_QUANTITY,
    MESSION AS BASE_UNIT,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.PLPO
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.routing_operations", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.434779571+00:00
-- finished_at: 2026-06-15T19:05:33.428168999+00:00
-- elapsed: 993ms
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_item_status
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e7a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_item_status
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    POSNR AS ITEM_NUMBER,
    GBSTA AS OVERALL_STATUS,
    LFSTA AS DELIVERY_STATUS,
    FKSTA AS BILLING_STATUS,
    ABSTA AS REJECTION_STATUS,
    BESTA AS CONFIRMATION_STATUS,
    COSTA AS ORDER_COMPLETION_STATUS,
    UVALL AS OVERALL_PROCESSING
FROM DEMO.SAP_ECC.VBUP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_item_status", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.488954586+00:00
-- finished_at: 2026-06-15T19:05:33.639142718+00:00
-- elapsed: 1.2s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.sales_order_items
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e7e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.sales_order_items
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS SALES_ORDER_NUMBER,
    POSNR AS ITEM_NUMBER,
    MATNR AS MATERIAL_NUMBER,
    ARKTX AS MATERIAL_DESCRIPTION,
    KWMENG AS ORDER_QUANTITY,
    VRKME AS SALES_UNIT,
    NETWR AS NET_VALUE,
    WAERK AS CURRENCY,
    NETPR AS NET_PRICE,
    KPEIN AS PRICE_UNIT,
    WERKS AS PLANT_CODE,
    LGORT AS STORAGE_LOCATION,
    PSTYV AS ITEM_CATEGORY,
    ABGRU AS REJECTION_REASON,
    MATKL AS MATERIAL_GROUP,
    PRODH AS PRODUCT_HIERARCHY,
    KONDM AS MATERIAL_PRICING_GROUP,
    WAVWR AS COST_VALUE,
    ERDAT AS CREATED_DATE,
    ERZET AS CREATED_TIME,
    ERNAM AS CREATED_BY,
    AEDAT AS CHANGED_DATE
FROM DEMO.SAP_ECC.VBAP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.sales_order_items", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.536548178+00:00
-- finished_at: 2026-06-15T19:05:34.111212286+00:00
-- elapsed: 1.6s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.document_flow
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e86
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.document_flow
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    VBELN AS PRECEDING_DOC_NUMBER,
    POSNN AS PRECEDING_ITEM_NUMBER,
    VBELV AS SUBSEQUENT_DOC_NUMBER,
    POSNV AS SUBSEQUENT_ITEM_NUMBER,
    VBTYP_N AS PRECEDING_DOC_CATEGORY,
    VBTYP_V AS SUBSEQUENT_DOC_CATEGORY,
    RFMNG AS REFERENCE_QUANTITY,
    VRKME AS SALES_UNIT,
    MATNR AS MATERIAL_NUMBER,
    ERDAT AS CREATED_DATE
FROM DEMO.SAP_ECC.VBFA
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.document_flow", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.707019311+00:00
-- finished_at: 2026-06-15T19:05:34.172818293+00:00
-- elapsed: 1.5s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.customers
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e8e
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.customers
    
    
    
    as (SELECT
    MANDT AS CLIENT,
    KUNNR AS CUSTOMER_NUMBER,
    NAME1 AS CUSTOMER_NAME,
    NAME2 AS CUSTOMER_NAME_2,
    LAND1 AS COUNTRY,
    ORT01 AS CITY,
    PSTLZ AS POSTAL_CODE,
    REGIO AS REGION,
    STRAS AS STREET,
    TELF1 AS TELEPHONE,
    TELFX AS FAX,
    SPRAS AS LANGUAGE,
    KTOKD AS ACCOUNT_GROUP,
    BRSCH AS INDUSTRY_SECTOR,
    KUKLA AS CUSTOMER_CLASS,
    STCD1 AS TAX_NUMBER_1,
    STCD2 AS TAX_NUMBER_2,
    LOEVM AS DELETION_FLAG,
    ERDAT AS CREATED_DATE,
    ERNAM AS CREATED_BY
FROM DEMO.SAP_ECC.KNA1
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.customers", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.519051391+00:00
-- finished_at: 2026-06-15T19:05:34.284960774+00:00
-- elapsed: 1.8s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_totals_internal
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e82
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.co_totals_internal
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COSS
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.co_totals_internal", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
-- created_at: 2026-06-15T19:05:32.575609497+00:00
-- finished_at: 2026-06-15T19:05:34.455410526+00:00
-- elapsed: 1.9s
-- outcome: success
-- dialect: snowflake
-- node_id: model.mbr_snowflake_dbt_ai.co_totals_external
-- query_id: 01c51259-0307-1b15-0005-0a3e00181e8a
-- desc: execute adapter call
create or replace transient  table DEMO.SILVER_SILVER.co_totals_external
    
    
    
    as (SELECT
    *
FROM DEMO.SAP_ECC.COSP
    )

/* {"app": "dbt", "dbt_version": "2.0.0", "node_id": "model.mbr_snowflake_dbt_ai.co_totals_external", "profile_name": "mbr_snowflake_dbt_ai", "target_name": "dev"} */;
