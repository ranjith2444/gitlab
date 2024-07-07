
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}
data "gitlab_group" "group" {
  for_each = var.group_access_token
  full_path  = each.value.group_full_path
}


resource "gitlab_group_access_token" "token" {
  for_each     = var.group_access_token
  group      = data.gitlab_group.group[each.key].id
  name         = each.value.token_name
  expires_at   = each.value.expires_at
  access_level = each.value.access_level
  scopes = each.value.scopes
}

resource "gitlab_group_variable" "example" {
  for_each = var.group_access_token
  group       = data.gitlab_group.group[each.key].id
  key         = each.value.variable_name
  value       = gitlab_group_access_token.token[each.key].token
  depends_on  = [ gitlab_group_access_token.token ]
}