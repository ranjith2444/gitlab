variable "project_label" {
  type = map(object({
    project_full_path = string
    label_name        = string
    description       = string
    color             = string   #https://developer.mozilla.org/en-US/docs/Web/CSS/color_value#Color_keywords
 }))
}

