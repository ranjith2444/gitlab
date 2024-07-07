
variable "group_hook" {
  type = map(object({
  group_full_path            = string
  url                        = string
  token                      = string
  push_events_branch_filter  = string
  enable_ssl_verification    = bool
  push_events                = bool
  issues_events              = bool
  confidential_issues_events = bool
  merge_requests_events      = bool
  tag_push_events            = bool
  note_events                = bool
  confidential_note_events   = bool
  job_events                 = bool
  pipeline_events            = bool
  wiki_page_events           = bool
  deployment_events          = bool
  releases_events            = bool
  subgroup_events            = bool
  }))
}


