
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}
data "gitlab_project" "git_lab_project" {
  for_each = var.project_branch
  path_with_namespace = each.value.project_full_path
}

resource "gitlab_branch" "branch" {
  for_each = var.project_branch
  name     = each.value.branch_name
  ref      = each.value.reference_branch
  project  = data.gitlab_project.git_lab_project[each.key].id
}