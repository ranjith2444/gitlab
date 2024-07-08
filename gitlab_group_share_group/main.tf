
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}

data "gitlab_group" "main" {
  for_each = var.group_share_group
  full_path = each.value.main_group_to_be_shared
}

data "gitlab_group" "additional" {
  for_each = var.group_share_group
  full_path = each.value.group_which_shares_main_group
}

resource "gitlab_group_share_group" "test" {
  for_each       = var.group_share_group
  group_id       = data.gitlab_group.main[each.key].id
  share_group_id = data.gitlab_group.additional[each.key].id
  group_access   = each.value.group_access
  expires_at     = each.value.expires_at
}


#  https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group_share_group