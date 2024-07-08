
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}
data "gitlab_project" "git_lab_project" {
  for_each = var.integration_emails_on_push
  path_with_namespace = each.value.project_full_path
}


resource "gitlab_integration_emails_on_push" "emails" {
  for_each = var.integration_emails_on_push
  project                     = data.gitlab_project.git_lab_project[each.key].id
  recipients                  = each.value.recipients
  branches_to_be_notified     = each.value.branches_to_be_notified
  disable_diffs               = each.value.disable_diffs
  push_events                 = each.value.push_events
  send_from_committer_email   = each.value.send_from_committer_email
  tag_push_events             = each.value.tag_push_events
}