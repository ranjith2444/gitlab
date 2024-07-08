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

