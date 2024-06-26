gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

gitlab_branch_protection = {
  "project_1" = {
      project                     = "manual_group_test/temp1/arina"  # project full path 
      branch                      = "test4"                         # branch name 
      push_access_level           = "maintainer"
      merge_access_level          = "maintainer"
      unprotect_access_level      = "maintainer"
      allow_force_push            = false #The users_allowed_to_push, users_allowed_to_merge, users_allowed_to_unprotect, unprotect_access_level and code_owner_approval_required attributes require a GitLab Enterprise instance.
      code_owner_approval_required= false
      users_allowed_to_push       = [] 
      users_allowed_to_merge      = []
      users_allowed_to_unprotect  = []
      groups_allowed_to_unprotect = []
  },
  "project_2" = {
      project                     = "branch-group-1/support_team/example"
      branch                      = "test2"
      push_access_level           = "developer"
      merge_access_level          = "developer"
      unprotect_access_level      = "developer"
      allow_force_push            = false #The users_allowed_to_push, users_allowed_to_merge, users_allowed_to_unprotect, unprotect_access_level and code_owner_approval_required attributes require a GitLab Enterprise instance.
      code_owner_approval_required= false
      users_allowed_to_push       = []
      users_allowed_to_merge      = []
      users_allowed_to_unprotect  = []
      groups_allowed_to_unprotect = []
  }
}

# sample values for using the entriprise versions 
#  "project_2" = {
#       project                     = "branch-group-1/support_team/example"
#       branch                      = "test2"
#       push_access_level           = "developer"
#       merge_access_level          = "developer"
#       unprotect_access_level      = "developer"
#       allow_force_push            = false #The users_allowed_to_push, users_allowed_to_merge, users_allowed_to_unprotect, unprotect_access_level and code_owner_approval_required attributes require a GitLab Enterprise instance.
#       code_owner_approval_required= false
#       users_allowed_to_push       = ["ranjith242","adithya242"]
#       users_allowed_to_merge      = ["ranjith242" ]
#       users_allowed_to_unprotect  = ["adithya242"]
#       groups_allowed_to_unprotect = ["Branch-group-1/support_team" , "manual_group_test/temp1"]
#   }