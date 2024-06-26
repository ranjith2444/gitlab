terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}

data "gitlab_project" "project" {
  path_with_namespace = var.project
}

data "gitlab_user" "allowed_to_push" {
  for_each = toset(var.users_allowed_to_push)
  username = each.value
}
data "gitlab_user" "allowed_to_unprotect" {
  for_each = toset(var.users_allowed_to_unprotect)
  username = each.value
}
data "gitlab_user" "allowed_to_merge" {
  for_each = toset(var.users_allowed_to_merge)
  username = each.value
}
data "gitlab_group" "allowed_to_unprotect" {
  for_each = toset(var.groups_allowed_to_unprotect)
  full_path = each.value
}


locals {
  users_allowed_to_push         = [for user in data.gitlab_user.allowed_to_push : user.id]
  users_allowed_to_unprotect    = [for user in data.gitlab_user.allowed_to_unprotect : user.id]
  users_allowed_to_merge        = [for user in data.gitlab_user.allowed_to_merge : user.id]
  group_allowed_to_unprotect    = [for group in data.gitlab_group.allowed_to_unprotect : group.id]
}

resource "gitlab_branch_protection" "main" {
  project                       = data.gitlab_project.project.id
  branch                        = var.branch
  push_access_level             = var.push_access_level
  merge_access_level            = var.merge_access_level
  unprotect_access_level        = var.unprotect_access_level
  code_owner_approval_required  = var.code_owner_approval_required
  allow_force_push              = var.allow_force_push 
  dynamic "allowed_to_push" {
    for_each = local.users_allowed_to_push
    content {
      user_id = allowed_to_push.value
    }
  }
  dynamic "allowed_to_merge" {
    for_each = local.users_allowed_to_merge
    content {
      user_id = allowed_to_merge.value
    }
  }
  dynamic "allowed_to_unprotect" {
    for_each = local.users_allowed_to_unprotect
    content {
      user_id = allowed_to_unprotect.value
    }
  }
  dynamic "allowed_to_unprotect" {
    for_each = local.group_allowed_to_unprotect
    content {
      group_id =  allowed_to_unprotect.value
    }
  }
}


output "gitlab_user_allowed_to_push" {
  value = local.users_allowed_to_push
}
output "gitlab_user_allowed_to_unprotect" {
  value = local.users_allowed_to_unprotect
}
output "gitlab_user_allowed_to_merge" {
  value = local.users_allowed_to_merge
}
output "gitlab_group_allowed_to_unprotect" {
  value = local.group_allowed_to_unprotect
}

