variable "group_access_token" {
  type = map(object({
    group_full_path = string
    token_name  = string
    expires_at = string 
    access_level = string #(String) The access level for the group access token. Valid values are: no one, minimal, guest, reporter, developer, maintainer, owner. Default is maintainer.
    variable_name = string
    scopes = list(string)  #(Set of String) The scopes of the group access token. Valid values are: api, read_api, read_registry, write_registry, read_repository, write_repository, create_runner, manage_runner, ai_features, k8s_proxy, read_observability, write_observability
  }))
}

