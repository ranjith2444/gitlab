variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}



variable "gitlab_branch_protection" {
  type = map(object({
      project = string
      branch = string
      push_access_level= string
      merge_access_level= string
      unprotect_access_level= string
      code_owner_approval_required = bool
      allow_force_push = bool
      users_allowed_to_push = list(string)
      users_allowed_to_merge = list(string)
      users_allowed_to_unprotect  =list(string)
      groups_allowed_to_unprotect =list(string)
   }))
}

