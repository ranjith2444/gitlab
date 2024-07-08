
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
data "gitlab_group" "group" {
  for_each = var.group_variable
  full_path  = each.value.group_full_path
}

resource "gitlab_group_variable" "example" {
  for_each = var.group_variable
  group             = data.gitlab_group.group[each.key].id
  description       = each.value.description
  key               = each.value.key
  value             = each.value.value
  environment_scope = each.value.environment_scope
  protected         = each.value.protected
  masked            = each.value.masked
  raw               = each.value.raw

}

