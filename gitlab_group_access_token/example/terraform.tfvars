gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

group_access_token = {
  "group_access_token_1" = {
    group_full_path = "manual_group_test/temp1"
    token_name      = "Example project access token"
    expires_at      = "2025-03-14" 
    access_level    = "reporter"                 #access_level (String) The access level for the project access token. Valid values are: no one, minimal, guest, reporter, developer, maintainer, owner. Default is maintainer.
    variable_name   = "group_pat_for_sample"       
    scopes          = ["api"]                    #(Set of String) The scopes of the project access token. valid values are: api, read_api, read_registry, write_registry, read_repository, write_repository, create_runner, manage_runner, ai_features, k8s_proxy, read_observability, write_observability
  }
}
