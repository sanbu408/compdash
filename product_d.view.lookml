- view: product_d
  sql_table_name: CommDash.PRODUCT_D
  fields:

  - dimension_group: dw_create
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_CREATE_DATE

  - dimension: dw_delete_ind
    type: string
    sql: ${TABLE}.DW_DELETE_IND

  - dimension: dw_product_key
    type: string
    sql: ${TABLE}.DW_PRODUCT_KEY

  - dimension_group: dw_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_UPDATE_DATE

  - dimension: prod_category
    type: string
    sql: ${TABLE}.PROD_CATEGORY

  - dimension: prod_family
    type: string
    sql: ${TABLE}.PROD_FAMILY

  - dimension: prod_part_no
    type: string
    sql: ${TABLE}.PROD_PART_NO

  - dimension: prod_type
    type: string
    sql: ${TABLE}.PROD_TYPE

  - measure: count
    type: count
    drill_fields: []

