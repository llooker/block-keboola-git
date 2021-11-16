include: "/views/*.view.lkml"

explore: repository_commit {


  join: user {
    type: left_outer
    sql_on: ${repository_commit.user_id} = ${user.user_id} ;;
    relationship: many_to_one
  }

  join: repository {
    type: left_outer
    sql_on: ${repository_commit.repository_id} = ${repository.repository_id} ;;
    relationship: many_to_one
  }

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
