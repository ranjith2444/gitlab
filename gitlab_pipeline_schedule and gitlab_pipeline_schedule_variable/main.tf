
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
data "gitlab_project" "git_lab_project" {
  for_each = var.pipeline_schedule_and_variable
  path_with_namespace = each.value.project_full_path
}



resource "gitlab_pipeline_schedule" "pipeline_schedule" {
  for_each        = var.pipeline_schedule_and_variable
  project         = data.gitlab_project.git_lab_project[each.key].id
  description     = each.value.description
  active          = each.value.active
  ref             = each.value.reference
  cron            = each.value.cron
  cron_timezone   = each.value.cron_timezone
  take_ownership  = each.value.take_ownership
}


locals {
  flattened_schedule_vars = flatten([
    for schedule_key, schedule_value in var.pipeline_schedule_and_variable : [
      for var_key, var_value in schedule_value.schedule_varibales : {
        project_id           = data.gitlab_project.git_lab_project[schedule_key].id
        pipeline_schedule_id = split(":", gitlab_pipeline_schedule.pipeline_schedule[schedule_key].id)[1]
        key                  = var_key
        value                = var_value
      }
    ]
  ])
}

resource "gitlab_pipeline_schedule_variable" "variable" {
  for_each = {
    for i, v in local.flattened_schedule_vars : "${v.project_id}-${v.key}" => v
  }

  project              = each.value.project_id
  pipeline_schedule_id = each.value.pipeline_schedule_id
  key                  = each.value.key
  value                = each.value.value
}