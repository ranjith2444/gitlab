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
  for_each            = var.project_variable
  path_with_namespace = each.value.project_full_path
}

#project variable variable 
resource "gitlab_project_variable" "project_variable" {
  for_each    = var.project_variable
  project     = data.gitlab_project.git_lab_project[each.key].id
  key         = each.value.variable_name
  value       = each.value.variable_value
  description = each.value.description
  protected   = each.value.protected
  raw         = each.value.raw
  masked      = each.value.masked 
}