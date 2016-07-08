- connection: datavirtuality

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: cal_date_d

- explore: product_d

- explore: region_d

- explore: sales_order_line_d

- explore: sales_order_line_f
  joins:
  - join: product_d
    sql_on: ${sales_order_line_f.dw_product_key} = ${product_d.dw_product_key}
    relationship: many_to_one

- explore: sales_rep_d

