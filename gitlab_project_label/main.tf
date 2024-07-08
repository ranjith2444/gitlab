terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}

# Fetching the existing project by given full path 
data "gitlab_project" "git_lab_project" {
  for_each            = var.project_label
  path_with_namespace = each.value.project_full_path
}

resource "gitlab_project_label" "devops_create" {
  for_each    = var.project_label
  project     = data.gitlab_project.git_lab_project[each.key].id
  name        = each.value.label_name
  description = each.value.description
  color       = each.value.color
}