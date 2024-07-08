module "gitlab_branch_protection" {
  for_each = var.gitlab_branch_protection

  source = "../"
      project                       = each.value.project
      branch                        = each.value.branch
      push_access_level             = each.value.push_access_level
      merge_access_level            = each.value.merge_access_level
      unprotect_access_level        = each.value.unprotect_access_level
      allow_force_push              = each.value.allow_force_push
      code_owner_approval_required = each.value.code_owner_approval_required 
      users_allowed_to_push         = each.value.users_allowed_to_push
      users_allowed_to_merge        = each.value.users_allowed_to_merge
      users_allowed_to_unprotect    = each.value.users_allowed_to_unprotect
      groups_allowed_to_unprotect   = each.value.groups_allowed_to_unprotect
}
