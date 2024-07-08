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
  for_each            = var.project_access_token
  path_with_namespace = each.value.project_full_path
}


resource "gitlab_project_access_token" "project_access_token" {
  for_each     = var.project_access_token
  project      = data.gitlab_project.git_lab_project[each.key].id
  name         = each.value.token_name
  expires_at   = each.value.expires_at
  access_level = each.value.access_level

  scopes = each.value.scopes
}

#once the token is craeted the same code will be added as project variable variable 
resource "gitlab_project_variable" "project_variable" {
  for_each    = var.project_access_token
  project     = data.gitlab_project.git_lab_project[each.key].id
  key         = each.value.variable_name
  value       = gitlab_project_access_token.project_access_token[each.key].token
  depends_on  = [ gitlab_project_access_token.project_access_token ]
}