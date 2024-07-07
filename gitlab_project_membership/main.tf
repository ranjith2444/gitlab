
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}
data "gitlab_project" "git_lab_project" {
  for_each = var.project_membership
  path_with_namespace = each.value.project_full_path
}

data "gitlab_user" "user" {
  for_each = var.project_membership
  username = each.value.user_name
}

resource "gitlab_project_membership" "project_membership" {
  for_each     = var.project_membership
  project      = data.gitlab_project.git_lab_project[each.key].id
  user_id      = data.gitlab_user.user[each.key].id
  access_level = each.value.access_level
  expires_at   = each.value.expires_at
}