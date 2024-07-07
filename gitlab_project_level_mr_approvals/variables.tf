
variable "gitlab_project_level_mr_approvals" {
  type = map(object({
      project_full_path                              = string
      disable_overriding_approvers_per_merge_request = bool
      merge_requests_author_approval                 = bool
      merge_requests_disable_committers_approval     = bool
      require_password_to_approve                    = bool
      reset_approvals_on_push                        = bool
      selective_code_owner_removals                  = bool  # selective_code_owner_removals can only be enabled when reset_approvals_on_push is disabled  
  }))
}

