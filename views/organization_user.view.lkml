view: organization_user{
  sql_table_name: @{SCHEMA_NAME}."ORGANIZATION_USER" ;;

  dimension: organization_id {
    hidden: yes
    type: string
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: user_id {
    hidden: yes
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: count {
    type: count
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      organization.organization,
      user.users
    ]
  }
}
