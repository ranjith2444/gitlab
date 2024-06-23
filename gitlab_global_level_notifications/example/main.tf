


module "chatGptWebApp" {
  source                  = "../gitlab_global_level_notifications"
  level                   = var.gitlab_global_level_notifications.level

  close_issue      =  var.gitlab_global_level_notifications.close_issue
  close_merge_request=  var.gitlab_global_level_notifications.close_merge_request
  failed_pipeline=  var.gitlab_global_level_notifications.failed_pipeline
  fixed_pipeline=  var.gitlab_global_level_notifications.fixed_pipeline
  issue_due=  var.gitlab_global_level_notifications.issue_due
  merge_merge_request =  var.gitlab_global_level_notifications.merge_merge_request
  merge_when_pipeline_succeeds =  var.gitlab_global_level_notifications.merge_when_pipeline_succeeds
  moved_project =  var.gitlab_global_level_notifications.moved_project
  new_issue =  var.gitlab_global_level_notifications.new_issue
  new_merge_request =  var.gitlab_global_level_notifications.new_merge_request
  new_note =  var.gitlab_global_level_notifications.new_note
  push_to_merge_request=  var.gitlab_global_level_notifications.push_to_merge_request
  reassign_issue =  var.gitlab_global_level_notifications.reassign_issue
  reassign_merge_request=  var.gitlab_global_level_notifications.reassign_merge_request
  reopen_issue =  var.gitlab_global_level_notifications.reopen_issue
  reopen_merge_request=  var.gitlab_global_level_notifications.reopen_merge_request
  success_pipeline =  var.gitlab_global_level_notifications.success_pipeline

}


