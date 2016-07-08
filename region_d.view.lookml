- view: region_d
  sql_table_name: CommDash.REGION_D
  fields:

  - dimension: area
    type: string
    sql: ${TABLE}.AREA

  - dimension: area_code
    type: string
    sql: ${TABLE}.AREA_CODE

  - dimension: district
    type: string
    sql: ${TABLE}.DISTRICT

  - dimension: district_code
    type: string
    sql: ${TABLE}.DISTRICT_CODE

  - dimension_group: dw_create
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_CREATE_DATE

  - dimension: dw_delete_ind
    type: string
    sql: ${TABLE}.DW_DELETE_IND

  - dimension: dw_region_key
    type: string
    sql: ${TABLE}.DW_REGION_KEY

  - dimension_group: dw_update
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.DW_UPDATE_DATE

  - dimension: geo
    type: string
    sql: ${TABLE}.GEO

  - dimension: geo_code
    type: string
    sql: ${TABLE}.GEO_CODE

  - dimension: multi_area
    type: string
    sql: ${TABLE}.MULTI_AREA

  - dimension: multi_area_code
    type: string
    sql: ${TABLE}.MULTI_AREA_CODE

  - dimension: multi_region
    type: string
    sql: ${TABLE}.MULTI_REGION

  - dimension: multi_region_code
    type: string
    sql: ${TABLE}.MULTI_REGION_CODE

  - dimension: region
    type: string
    sql: ${TABLE}.REGION

  - dimension: region_code
    type: string
    sql: ${TABLE}.REGION_CODE

  - dimension: team
    type: string
    sql: ${TABLE}.TEAM

  - dimension: team_code
    type: string
    sql: ${TABLE}.TEAM_CODE

  - measure: count
    type: count
    drill_fields: []

