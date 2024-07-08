
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
 locals {
  is_custom_level = var.level == "custom"
}


data "gitlab_project" "git_lab_project" {
   path_with_namespace = var.project_full_path
}

resource "gitlab_project_level_notifications" "custom" {
  count                             = local.is_custom_level ? 1 : 0
  level                             = "custom"
  project                           = data.gitlab_project.git_lab_project.id
  close_issue                       = var.close_issue
  close_merge_request               = var.close_merge_request
  failed_pipeline                   = var.failed_pipeline
  fixed_pipeline                    = var.fixed_pipeline
  issue_due                         = var.issue_due
  merge_merge_request               = var.merge_merge_request
  merge_when_pipeline_succeeds      = var.merge_when_pipeline_succeeds
  moved_project                     = var.moved_project
  new_issue                         = var.new_issue
  new_merge_request                 = var.new_merge_request
  new_note                          = var.new_note
  push_to_merge_request             = var.push_to_merge_request
  reassign_issue                    = var.reassign_issue
  reassign_merge_request            = var.reassign_merge_request
  reopen_issue                      = var.reopen_issue
  reopen_merge_request              = var.reopen_merge_request
  success_pipeline                  = var.success_pipeline
}

resource "gitlab_project_level_notifications" "others" {
  count = local.is_custom_level ? 0 : 1
  project = data.gitlab_project.git_lab_project.id
  level  = var.level
}
