- view: salesrep_facts
  derived_table:
    sql: |
      SELECT 
              sales_rep_d.REP_NAME AS rep_name,
              COALESCE(SUM(sales_order_line_f.TOTAL_NETSELLPRICE_GOAL_CCY), 0) AS total_goal,
              COALESCE(SUM(sales_order_line_f.TOTAL_NETSELLPRICE_GOAL_CCY), 0) AS total_invoiced,
              COUNT(*) AS total_orders,
              COUNT(DISTINCT sales_order_line_d.BILL_TO_CUST_NAME) AS total_customers
            FROM CommDash.SALES_ORDER_LINE_F AS sales_order_line_f
            LEFT JOIN CommDash.SALES_ORDER_LINE_D AS sales_order_line_d ON sales_order_line_f.DW_SALES_ORDER_LINE_KEY = sales_order_line_d.DW_SALES_ORDER_LINE_KEY
            LEFT JOIN CommDash.SALES_REP_D AS sales_rep_d ON sales_order_line_f.DW_SALES_REP_KEY = sales_rep_d.DW_SALES_REP_KEY
            
            GROUP BY sales_rep_d.REP_NAME
            

  fields:

  - dimension: rep_name
    type: string
    sql: ${TABLE}.rep_name

  - dimension: total_goal
    type: string
    sql: ${TABLE}.total_goal

  - dimension: total_invoiced
    type: string
    sql: ${TABLE}.total_invoiced

  - dimension: total_orders
    type: string
    sql: ${TABLE}.total_orders
    
  - dimension: avg_order_value
    type: number
    sql: ${total_orders} / nullif(${total_invoiced},0)
    value_format_name: usd

  - dimension: total_customers
    type: string
    sql: ${TABLE}.total_customers
    
  - dimension: total_customers_tier
    type: tier
    tiers: [0,2,4,6]
    style: integer
    sql: ${total_customers}

  - measure: count
    type: count
    drill_fields: detail*
    
  - measure: avg_invoiced
    type: average
    sql: ${total_invoiced}
    value_format_name: usd
    
  - measure: avg_orders
    type: average
    sql: ${total_orders}
    value_format_name: decimal_0

  sets:
    detail:
      - rep_name
      - total_goal
      - total_invoiced
      - sales_order_line_f_count
      - total_customers

