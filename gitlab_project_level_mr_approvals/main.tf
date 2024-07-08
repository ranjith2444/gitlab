
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 17.0.0"
    }
  }
}

data "gitlab_project" "git_lab_project" {
  for_each = var.gitlab_project_level_mr_approvals
  path_with_namespace = each.value.project_full_path
}

resource "gitlab_project_level_mr_approvals" "project_approvals" {
  for_each = var.gitlab_project_level_mr_approvals
  project                                            = data.gitlab_project.git_lab_project[each.key].id
      disable_overriding_approvers_per_merge_request = each.value.disable_overriding_approvers_per_merge_request
      merge_requests_author_approval                 = each.value.merge_requests_author_approval
      merge_requests_disable_committers_approval     = each.value.merge_requests_disable_committers_approval
      require_password_to_approve                    = each.value.require_password_to_approve
      reset_approvals_on_push                        = each.value.reset_approvals_on_push
      selective_code_owner_removals                  = each.value.selective_code_owner_removals
}

