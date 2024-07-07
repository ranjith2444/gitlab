variable "group_variable" {
  type = map(object({
      group_full_path   = string
      description       = string
      key               = string
      value             = string
      environment_scope = string
      protected         = bool
      masked            = bool
      raw               = bool
 }))
}

