
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}
data "gitlab_project" "git_lab_project" {
  for_each = var.project_access_token
  path_with_namespace = each.value.project_full_path
}


resource "gitlab_project_access_token" "example" {
  for_each     = var.project_access_token
  project      = data.gitlab_project.git_lab_project[each.key].id
  name         = each.value.token_name
  expires_at   = each.value.expires_at
  access_level = each.value.access_level

  scopes = each.value.scopes
}

resource "gitlab_project_variable" "example" {
  for_each = var.project_access_token
  project = data.gitlab_project.git_lab_project[each.key].id
  key =     each.value.variable_name
  value   =  gitlab_project_access_token.example[each.key].token
  depends_on = [ gitlab_project_access_token.example ]
}