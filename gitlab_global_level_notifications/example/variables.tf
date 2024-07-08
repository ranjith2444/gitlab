variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}



variable "gitlab_global_level_notifications" {
  type = map(any)
}

