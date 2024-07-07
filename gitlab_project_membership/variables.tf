variable "project_membership" {
  type = map(object({
    project_full_path = string
    user_name  = string
    expires_at = string #(String) Expiration date for the project membership. Format: YYYY-MM-DD
    access_level = string # (String) The access level for the member. Valid values are: no one, minimal, guest, reporter, developer, maintainer, owner
 }))
}

