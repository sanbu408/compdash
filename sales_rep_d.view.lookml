- view: sales_rep_d
  sql_table_name: CommDash.SALES_REP_D
  fields:

  - filter: sales_rep_select 
    suggest_dimension: sales_rep_d.rep_name
    
  - filter: rep_type_select
    suggest_dimension: sales_rep_d.rep_type
    
  - dimension: rep_comparitor
    sql: |
      CASE 
        WHEN {% condition sales_rep_select %} ${sales_rep_d.rep_name} {% endcondition %} 
          THEN concat('1 - ' , ${sales_rep_d.rep_name}) 
        WHEN {% condition rep_type_select %} sales_rep_d.rep_type {% endcondition %}
          THEN concat('2 - Rest of ' , ${sales_rep_d.rep_type})
        ELSE '3 - All Other Reps'
      END
  
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
    suggest_persist_for: 24 hours
    links:
    - label: Sales Rep Commission Dashboard
      url: /dashboards/6?Sales%20Rep={{ value }}&Rep%20Type={{ rep_type._value }}
      icon_url: http://looker.com/favicon.ico    

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
