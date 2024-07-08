
data "gitlab_group" "git_group" {
  for_each = var.group_membership
  full_path = each.value.group_full_path
}

data "gitlab_user" "gitlab_user" {
  for_each = var.group_membership
  username = each.value.user_name
}

resource "gitlab_group_membership" "example_member" {
  for_each = var.group_membership
  group_id = data.gitlab_group.git_group[each.key].group_id
  user_id  = data.gitlab_user.gitlab_user[each.key].user_id  
  access_level = each.value.access_level  # guest, reporter, developer, maintainer, owner
  expires_at = each.value.expires_at
}
