variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}

variable "group_label" {
  type = map(object({
    group_full_path   = string
    label_name        = string
    description       = string
    color             = string   #https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#Color_keywords
 }))
}


