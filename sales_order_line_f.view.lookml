- view: sales_order_line_f
  sql_table_name: "CommDash.SALES_ORDER_LINE_F"
  fields:

  - dimension: budgeted_rate
    type: string
    sql: ${TABLE}.BUDGETED_RATE

  - dimension: ch_flag
    type: string
    sql: ${TABLE}.CH_FLAG

  - dimension: dw_accounting_date_key
    type: string
    sql: ${TABLE}.DW_ACCOUNTING_DATE_KEY

  - dimension: dw_booked_date_key
    type: string
    sql: ${TABLE}.DW_BOOKED_DATE_KEY

  - dimension: dw_comp_date_key
    type: string
    sql: ${TABLE}.DW_COMP_DATE_KEY

  - dimension_group: dw_create
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_CREATE_DATE

  - dimension: dw_delete_ind
    type: string
    sql: ${TABLE}.DW_DELETE_IND

  - dimension: dw_invoice_date_key
    type: string
    sql: ${TABLE}.DW_INVOICE_DATE_KEY

  - dimension: dw_product_key
    type: string
    sql: ${TABLE}.DW_PRODUCT_KEY

  - dimension: dw_region_key
    type: string
    sql: ${TABLE}.DW_REGION_KEY

  - dimension: dw_sales_order_line_key
    type: string
    sql: ${TABLE}.DW_SALES_ORDER_LINE_KEY

  - dimension: dw_sales_rep_key
    type: string
    sql: ${TABLE}.DW_SALES_REP_KEY

  - dimension_group: dw_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_UPDATE_DATE

  - dimension: federal_flag
    type: string
    sql: ${TABLE}.FEDERAL_FLAG

  - dimension: list_price_goal_ccy
    type: string
    sql: ${TABLE}.LIST_PRICE_GOAL_CCY

  - dimension: new_acct_flag
    type: string
    sql: ${TABLE}.NEW_ACCT_FLAG

  - dimension: orderentry_bdn_cost_so_ccy
    type: string
    sql: ${TABLE}.ORDERENTRY_BDN_COST_SO_CCY

  - dimension: orderentry_list_price_so_ccy
    type: string
    sql: ${TABLE}.ORDERENTRY_LIST_PRICE_SO_CCY

  - dimension: orderentry_netsellprice_so_ccy
    type: string
    sql: ${TABLE}.ORDERENTRY_NETSELLPRICE_SO_CCY

  - dimension: qty_shipped
    type: string
    sql: ${TABLE}.QTY_SHIPPED

  - dimension: recourse_lease_flag
    type: string
    sql: ${TABLE}.RECOURSE_LEASE_FLAG

  - dimension: renewal_revenue_flag
    type: string
    sql: ${TABLE}.RENEWAL_REVENUE_FLAG

  - dimension: rep_goal_ccy_code
    type: string
    sql: ${TABLE}.REP_GOAL_CCY_CODE

  - dimension: total_bdn_cost_goal_ccy
    type: string
    sql: ${TABLE}.TOTAL_BDN_COST_GOAL_CCY

  - dimension: total_netsellprice_goal_ccy
    type: string
    hidden: true
    sql: ${TABLE}.TOTAL_NETSELLPRICE_GOAL_CCY

  - dimension: usd_bdn_cost_budgeted_rate
    type: string
    sql: ${TABLE}.USD_BDN_COST_BUDGETED_RATE

  - dimension: usd_list_price_budgeted_rate
    type: string
    sql: ${TABLE}.USD_LIST_PRICE_BUDGETED_RATE

  - dimension: usd_netsellprice_budgeted_rate
    type: string
    sql: ${TABLE}.USD_NETSELLPRICE_BUDGETED_RATE

  - measure: count
    type: count
    drill_fields: []
    
  - measure: invoiced
    type: sum
    sql: ${total_netsellprice_goal_ccy}
    drill_fields: [dw_sales_order_line_key, sales_order_line_d.sold_to_cust_name, sales_order_line_d.bill_to_cust_name, invoiced]
    
  - measure: goal
    type: sum
    sql: ${total_netsellprice_goal_ccy}

  - measure: invoiced1
    type: sum
    sql: ${Orderentry Netselling So ccy}
 
  - measure: attainment
  # probabaly need to add a null_if function
    type: number
    sql: ${invoiced} / nullif(${goal},0)
    value_format_name: percent_0
    
  - measure: on_reserve
    type: sum
    sql:  ${orderentry_list_price_so_ccy}
    filters:
      sales_order_line_d.transaction_type: "CURRENT PERIOD ONRESERVE"
    
    
  

