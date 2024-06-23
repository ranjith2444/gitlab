gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

gitlab_project_level_notifications = {
  "project1" = {
    project_full_path             = "branch-group-1/support_team/example"
    level                         = "watch"
    close_issue                   = true
    close_merge_request           = true
    failed_pipeline               = true
    fixed_pipeline                = true
    issue_due                     = true
    merge_merge_request           = true
    merge_when_pipeline_succeeds  = true
    moved_project                 = true
    new_issue                     = true
    new_merge_request             = true
    new_note                      = true
    push_to_merge_request         = true
    reassign_issue                = true
    reassign_merge_request        = true
    reopen_issue                  = true
    reopen_merge_request          = true
    success_pipeline              = true
  },
  "project2" = {
    project_full_path             = "branch-group-1/support_team/microsft"
    level                         = "custom"
    close_issue                   = true
    close_merge_request           = false
    failed_pipeline               = true
    fixed_pipeline                = true
    issue_due                     = false
    merge_merge_request           = false
    merge_when_pipeline_succeeds  = true
    moved_project                 = false
    new_issue                     = false
    new_merge_request             = false
    new_note                      = false
    push_to_merge_request         = false
    reassign_issue                = false
    reassign_merge_request        = false
    reopen_issue                  = false
    reopen_merge_request          = false
    success_pipeline              = false
  }
}
