variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}


variable "project_variable" {
  type = map(object({
    project_full_path   = string
    description         = string
    variable_name       = string
    variable_value      = string
    masked              = bool
    protected           = bool
    raw                 = bool 
  }))
}

