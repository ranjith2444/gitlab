
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}
data "gitlab_group" "group" {
  for_each = var.group_label
  full_path  = each.value.group_full_path
}

resource "gitlab_group_label" "label" {
  for_each    = var.group_label
  group       = data.gitlab_group.group[each.key].id
  name        = each.value.label_name
  description = each.value.description
  color       = each.value.color
}