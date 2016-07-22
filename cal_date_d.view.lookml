- view: cal_date_d
  sql_table_name: CommDash.CAL_DATE_D
  fields:

  - dimension_group: cal
    type: time
    timeframes: [date, week, month, year, week_of_year] #see all timeframes here: https://looker.com/docs/reference/field-reference/dimension-type-reference#time 
    convert_tz: false
    sql: ${TABLE}.CAL_DATE

#  - dimension: cal_month
 #   type: string
  #  sql: ${TABLE}.CAL_MONTH

#   - dimension_group: cal_qtr_end
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.CAL_QTR_END_DATE
# 
#   - dimension_group: cal_qtr_start
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.CAL_QTR_START_DATE
# 
#   - dimension: cal_year
#     type: string
#     sql: ${TABLE}.CAL_YEAR
# 
#   - dimension: cal_year_qtr
#     type: string
#     sql: ${TABLE}.CAL_YEAR_QTR
# 
  - dimension: dw_cal_date_key
    type: string
    sql: ${TABLE}.DW_CAL_DATE_KEY
# 
#   - dimension_group: dw_create
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.DW_CREATE_DATE
# 
#   - dimension_group: dw_update
#     type: time
#     timeframes: [date, week, month]
#     convert_tz: false
#     sql: ${TABLE}.DW_UPDATE_DATE
# 
#   - dimension: eightqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.EIGHTQTRAGO_YEAR2QTRNAME
# 
#   - dimension: fiscal_month
#     type: string
#     sql: ${TABLE}.FISCAL_MONTH
# 
#   - dimension: fiscal_qtr
#     type: string
#     sql: ${TABLE}.FISCAL_QTR
# 
#   - dimension: fiscal_qtr_end_date
#     type: string
#     sql: ${TABLE}.FISCAL_QTR_END_DATE
# 
#   - dimension: fiscal_qtr_start_date
#     type: string
#     sql: ${TABLE}.FISCAL_QTR_START_DATE
# 
#   - dimension: fiscal_year
#     type: string
#     sql: ${TABLE}.FISCAL_YEAR
# 
#   - dimension: fiveqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.FIVEQTRAGO_YEAR2QTRNAME
# 
#   - dimension: fourqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.FOURQTRAGO_YEAR2QTRNAME
# 
#   - dimension: oneqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.ONEQTRAGO_YEAR2QTRNAME
# 
#   - dimension: sevenqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.SEVENQTRAGO_YEAR2QTRNAME
# 
#   - dimension: sixqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.SIXQTRAGO_YEAR2QTRNAME
# 
#   - dimension: source_system_name
#     type: string
#     sql: ${TABLE}.SOURCE_SYSTEM_NAME
# 
#   - dimension: threeqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.THREEQTRAGO_YEAR2QTRNAME
# 
#   - dimension: twoqtrago_year2_qtrname
#     type: string
#     sql: ${TABLE}.TWOQTRAGO_YEAR2QTRNAME
# 
#   - dimension: year_week
#     type: string
#     sql: ${TABLE}.YEAR_WEEK
# 
#   - measure: count
#     type: count
#     drill_fields: detail*
# 
# 
#   # ----- Sets of fields for drilling ------
#   sets:
#     detail:
#     - source_system_name
#     - oneqtrago_year2_qtrname
#     - twoqtrago_year2_qtrname
#     - threeqtrago_year2_qtrname
#     - fourqtrago_year2_qtrname
#     - fiveqtrago_year2_qtrname
#     - sixqtrago_year2_qtrname
#     - sevenqtrago_year2_qtrname
#     - eightqtrago_year2_qtrname

