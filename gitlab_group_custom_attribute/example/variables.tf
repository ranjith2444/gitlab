variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}


variable "group_custom_attribute" {
  type = map(object({
    group_full_path = string
    custom_attribute         = map(string)
 }))
}




