variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}


variable "group_membership" {
  type = map(object({
    group_full_path = string
    user_name = string
    access_level = string 
    expires_at = string
  }))
}

