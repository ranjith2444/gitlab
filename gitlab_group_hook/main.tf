
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
data "gitlab_group" "group" {
  for_each = var.group_hook
  full_path  = each.value.group_full_path
}

resource "gitlab_group_hook" "all_attributes" {
  for_each = var.group_hook
  group                      = data.gitlab_group.group[each.key].id
  url                        = each.value.url
  token                      = each.value.token
  push_events_branch_filter  = each.value.push_events_branch_filter
  enable_ssl_verification    = each.value.enable_ssl_verification
  push_events                = each.value.push_events
  issues_events              = each.value.issues_events
  confidential_issues_events = each.value.confidential_issues_events
  merge_requests_events      = each.value.merge_requests_events
  tag_push_events            = each.value.tag_push_events
  note_events                = each.value.note_events
  confidential_note_events   = each.value.confidential_note_events
  job_events                 = each.value.job_events
  pipeline_events            = each.value.pipeline_events
  wiki_page_events           = each.value.wiki_page_events
  deployment_events          = each.value.deployment_events
  releases_events            = each.value.releases_events
  subgroup_events            = each.value.subgroup_events
}