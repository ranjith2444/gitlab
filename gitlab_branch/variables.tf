
variable "project_branch" {
  type = map(object({
      project_full_path = string
      branch_name  = string
      reference_branch =string
  }))
}

