- connection: datavirtuality

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

# - explore: cal_date_d
# 
# - explore: product_d
# 
# - explore: region_d
# 
# - explore: sales_order_line_d

- explore: sales_rep_d
  label: "Sales Reps"
  joins:
  - join: salesrep_facts  
    sql_on: ${sales_rep_d.rep_name} = ${salesrep_facts.rep_name}
    relationship: one_to_one

- explore: sales_order_line_f
  label: "Sales Orders"
  view_label: "Sales Orders"
  joins:
  - join: product_d
    sql_on: ${sales_order_line_f.dw_product_key} = ${product_d.dw_product_key}
    relationship: many_to_one

  - join: region_d
    sql_on: ${sales_order_line_f.dw_region_key} = ${region_d.dw_region_key}
    relationship: many_to_one

  - join: sales_order_line_d
    sql_on: ${sales_order_line_f.dw_sales_order_line_key} = ${sales_order_line_d.dw_sales_order_line_key}
    relationship: many_to_one

  - join: comp_date
    from: cal_date_d
    sql_on: ${sales_order_line_f.dw_comp_date_key} = ${comp_date.dw_cal_date_key}
    relationship: many_to_one
    
  - join: invoice_date
    from: cal_date_d
    sql_on: ${sales_order_line_f.dw_invoice_date_key} = ${invoice_date.dw_cal_date_key}
    relationship: many_to_one    
    
  - join: sales_rep_d
    sql_on: ${sales_order_line_f.dw_sales_rep_key} = ${sales_rep_d.dw_sales_rep_key} 
    relationship: many_to_one
    
  - join: salesrep_facts  
    sql_on: ${sales_rep_d.rep_name} = ${salesrep_facts.rep_name}
    relationship: one_to_one