- view: sales_rep_d
  sql_table_name: CommDash.SALES_REP_D
  fields:

  - dimension_group: dw_create
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_CREATE_DATE

  - dimension: dw_delete_ind
    type: string
    sql: ${TABLE}.DW_DELETE_IND

  - dimension: dw_sales_rep_key
    primary_key: true
    type: string
    sql: ${TABLE}.DW_SALES_REP_KEY

  - dimension_group: dw_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_UPDATE_DATE

  - dimension: rep_employment_status
    type: string
    sql: ${TABLE}.REP_EMPLOYMENT_STATUS

  - dimension: rep_id
    type: string
    sql: ${TABLE}.REP_ID

  - dimension: rep_name
    type: string
    sql: ${TABLE}.REP_NAME

  - dimension: rep_type
    type: string
    sql: ${TABLE}.REP_TYPE

  - dimension: world_wide
    type: string
    sql: ${TABLE}.WORLD_WIDE

  - dimension: world_wide_code
    type: string
    sql: ${TABLE}.WORLD_WIDE_CODE

  - measure: count
    type: count
    drill_fields: [rep_name]

