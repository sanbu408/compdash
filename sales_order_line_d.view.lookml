- view: sales_order_line_d
  sql_table_name: CommDash.SALES_ORDER_LINE_D
  fields:

  - dimension: aoo_classification
    type: string
    sql: ${TABLE}.AOO_CLASSIFICATION

  - dimension: aoo_name
    type: string
    sql: ${TABLE}.AOO_NAME

  - dimension: aoo_no
    type: string
    sql: ${TABLE}.AOO_NO

  - dimension: auth_partner_service_provider
    type: string
    sql: ${TABLE}.AUTH_PARTNER_SERVICE_PROVIDER

  - dimension: bill_to_country
    type: string
    sql: ${TABLE}.BILL_TO_COUNTRY

  - dimension: bill_to_cust_name
    type: string
    sql: ${TABLE}.BILL_TO_CUST_NAME

  - dimension: bill_to_id
    type: string
    sql: ${TABLE}.BILL_TO_ID

  - dimension: bill_to_storage_5_k
    type: string
    sql: ${TABLE}.BILL_TO_STORAGE_5K

  - dimension: ch_program
    type: string
    sql: ${TABLE}.CH_PROGRAM

  - dimension: ch_program_2
    type: string
    sql: ${TABLE}.CH_PROGRAM_2

  - dimension: ch_revenue_program
    type: string
    sql: ${TABLE}.CH_REVENUE_PROGRAM

  - dimension: comments
    type: string
    sql: ${TABLE}.COMMENTS

  - dimension: coo2_name
    type: string
    sql: ${TABLE}.COO2_NAME

  - dimension: coo_2_no
    type: string
    sql: ${TABLE}.COO_2_NO

  - dimension: coo_name
    type: string
    sql: ${TABLE}.COO_NAME

  - dimension: coo_no
    type: string
    sql: ${TABLE}.COO_NO

  - dimension: doo_name
    type: string
    sql: ${TABLE}.DOO_NAME

  - dimension: doo_no
    type: string
    sql: ${TABLE}.DOO_NO

  - dimension_group: dw_create
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_CREATE_DATE

  - dimension: dw_delete_ind
    type: string
    sql: ${TABLE}.DW_DELETE_IND

  - dimension: dw_sales_order_line_key
    type: string
    sql: ${TABLE}.DW_SALES_ORDER_LINE_KEY

  - dimension_group: dw_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_UPDATE_DATE

  - dimension: event_type
    type: string
    sql: ${TABLE}.EVENT_TYPE

  - dimension: hosting_on_order
    type: string
    sql: ${TABLE}.HOSTING_ON_ORDER

  - dimension: import
    type: string
    sql: ${TABLE}."IMPORT"

  - dimension: manual_input_variable
    type: string
    sql: ${TABLE}.MANUAL_INPUT_VARIABLE

  - dimension: netapp_bu
    type: string
    sql: ${TABLE}.NETAPP_BU

  - dimension: opportunity_id
    type: string
    sql: ${TABLE}.OPPORTUNITY_ID

  - dimension: po_no
    type: string
    sql: ${TABLE}.PO_NO

  - dimension: prod_platform_grouping
    type: string
    sql: ${TABLE}.PROD_PLATFORM_GROUPING

  - dimension: rep_comm_percent
    type: string
    sql: ${TABLE}.REP_COMM_PERCENT

  - dimension: ship_to_country
    type: string
    sql: ${TABLE}.SHIP_TO_COUNTRY

  - dimension: ship_to_cust_name
    type: string
    sql: ${TABLE}.SHIP_TO_CUST_NAME

  - dimension: ship_to_id
    type: string
    sql: ${TABLE}.SHIP_TO_ID

  - dimension: ship_to_parent_vertical
    type: string
    sql: ${TABLE}.SHIP_TO_PARENT_VERTICAL

  - dimension: ship_to_storage_5_k
    type: string
    sql: ${TABLE}.SHIP_TO_STORAGE_5K

  - dimension: so_converted
    type: string
    sql: ${TABLE}.SO_CONVERTED

  - dimension: so_line_item_converted
    type: string
    sql: ${TABLE}.SO_LINE_ITEM_CONVERTED

  - dimension: so_line_item_unconverted
    type: string
    sql: ${TABLE}.SO_LINE_ITEM_UNCONVERTED

  - dimension: so_unconverted
    type: string
    sql: ${TABLE}.SO_UNCONVERTED

  - dimension: sold_to_country
    type: string
    sql: ${TABLE}.SOLD_TO_COUNTRY

  - dimension: sold_to_cust_name
    type: string
    sql: ${TABLE}.SOLD_TO_CUST_NAME

  - dimension: sold_to_id
    type: string
    sql: ${TABLE}.SOLD_TO_ID

  - dimension: sold_to_storage_5_k
    type: string
    sql: ${TABLE}.SOLD_TO_STORAGE_5K

  - dimension: transaction_type
    type: string
    sql: ${TABLE}.TRANSACTION_TYPE
    
  - measure: Onreserve
    type: sum
    sql: if (Transaction Type = 'CURRENT PERIOD ON RESERVE" THEN ${Order Entry List Price So ccy}
    
  - measure: Offreserve
    type: sum
    sql: if (Transaction Type = 'CURRENT PERIOD OFF RESERVE" THEN ${Order Entry List Price So ccy}

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - sold_to_cust_name
    - bill_to_cust_name
    - ship_to_cust_name
    - doo_name
    - aoo_name
    - coo_name
    - coo2_name

