gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"


gitlab_global_level_notifications={
    level = "watch"  #Valid values are:["disabled" "participating" "watch" "mention" "custom"]
    # All the below values are only vaild of the level is custom else everything will be disabled.
    close_issue      = true
    close_merge_request= true
    failed_pipeline= true
    fixed_pipeline= true
    issue_due= true
    merge_merge_request = true
    merge_when_pipeline_succeeds = true
    moved_project = true
    new_issue = true
    new_merge_request = true
    new_note = true
    push_to_merge_request= true
    reassign_issue = true
    reassign_merge_request= true
    reopen_issue = true
    reopen_merge_request= true
    success_pipeline = true
}

