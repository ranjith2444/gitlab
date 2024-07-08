variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}



variable "gitlab_project_level_notifications" {
  type = map(object({
    project_full_path           = string
    level                       = string
    close_issue                 = bool
    close_merge_request         = bool
    failed_pipeline             = bool
    fixed_pipeline              = bool
    issue_due                   = bool
    merge_merge_request         = bool
    merge_when_pipeline_succeeds= bool
    moved_project               = bool
    new_issue                   = bool
    new_merge_request           = bool
    new_note                    = bool
    push_to_merge_request       = bool
    reassign_issue              = bool
    reassign_merge_request      = bool
    reopen_issue                = bool
    reopen_merge_request        = bool
    success_pipeline            = bool
   }))
}

