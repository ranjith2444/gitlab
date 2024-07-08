module "gitlab_project_level_notifications" {
  for_each = var.gitlab_project_level_notifications

  source = "../"
  project_full_path             = each.value.project_full_path
  level                         = each.value.level
  close_issue                   = each.value.close_issue
  close_merge_request           = each.value.close_merge_request
  failed_pipeline               = each.value.failed_pipeline
  fixed_pipeline                = each.value.fixed_pipeline
  issue_due                     = each.value.issue_due
  merge_merge_request           = each.value.merge_merge_request
  merge_when_pipeline_succeeds  = each.value.merge_when_pipeline_succeeds
  moved_project                 = each.value.moved_project
  new_issue                     = each.value.new_issue
  new_merge_request             = each.value.new_merge_request
  new_note                      = each.value.new_note
  push_to_merge_request         = each.value.push_to_merge_request
  reassign_issue                = each.value.reassign_issue
  reassign_merge_request        = each.value.reassign_merge_request
  reopen_issue                  = each.value.reopen_issue
  reopen_merge_request          = each.value.reopen_merge_request
  success_pipeline              = each.value.success_pipeline
}
