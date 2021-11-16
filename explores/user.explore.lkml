include: "/views/*.view.lkml"

explore: user{


  join: organization_user {
    type: left_outer
    sql_on: ${user.user_id} = ${organization_user.user_id} ;;
    relationship: one_to_many
  }

  join: organization {
    type: left_outer
    sql_on: ${organization_user.organization_id} = ${organization.organization_id} ;;
    relationship: many_to_one
  }
}
