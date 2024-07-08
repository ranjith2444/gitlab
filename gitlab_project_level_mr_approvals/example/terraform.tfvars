gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

gitlab_project_level_mr_approvals = {
  "project1_gitlab_project_level_mr_approvals" = {
      project_full_path                              = "manual_group_test/temp1/test1project"
      disable_overriding_approvers_per_merge_request = true
      merge_requests_author_approval                 = true
      merge_requests_disable_committers_approval     = true
      require_password_to_approve                    = true
      reset_approvals_on_push                        = false
      selective_code_owner_removals                  = true  # selective_code_owner_removals can only be enabled when reset_approvals_on_push is disabled  

  }
}
