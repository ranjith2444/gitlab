
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
data "gitlab_group" "group" {
  for_each = var.group_custom_attribute
  full_path  = each.value.group_full_path
}


locals {
  flattened_group_custom_attribute = flatten([
    for custom_key, custom_value in var.group_custom_attribute : [
      for var_key, var_value in custom_value.custom_attribute : {
        group_id           = data.gitlab_group.group[custom_key].id
        key                  = var_key
        value                = var_value
      }
    ]
  ])
}

resource "gitlab_group_custom_attribute" "custom_attribute" {
  for_each = {
    for i, v in local.flattened_group_custom_attribute : "${v.group_id}-${v.key}" => v
  }
  group                = each.value.group_id
  key                  = each.value.key
  value                = each.value.value
}