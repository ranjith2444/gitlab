variable "group_custom_attribute" {
  type = map(object({
    group_full_path   = string
    custom_attribute  = map(string)
 }))
}



