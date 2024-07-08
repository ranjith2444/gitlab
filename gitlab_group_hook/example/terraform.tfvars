gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

group_hook = {
  "group_hook_1" = {
    group_full_path            = "manual_group_test/temp1"
    url                        = "http://example.com"
    token                      = "supersecret"
    enable_ssl_verification    = false
    push_events                = true
    push_events_branch_filter  = "devel"
    issues_events              = false
    confidential_issues_events = false
    merge_requests_events      = true
    tag_push_events            = true
    note_events                = true
    confidential_note_events   = true
    job_events                 = true
    pipeline_events            = true
    wiki_page_events           = true
    deployment_events          = true
    releases_events            = true
    subgroup_events            = true  
    }
}
