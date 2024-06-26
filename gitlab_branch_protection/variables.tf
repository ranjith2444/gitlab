variable "project" {
  type = string
}

variable "branch" {
  type = string
}

variable "push_access_level" {
  type = string
}
variable "merge_access_level" {
  type = string
}
variable "unprotect_access_level" {
  type = string
}
variable "allow_force_push" {
  type = bool
}
variable "code_owner_approval_required" {
  type = bool
}
variable "users_allowed_to_push" {
  type = list(string)
}
variable "users_allowed_to_merge" {
  type = list(string)
}
variable "users_allowed_to_unprotect" {
  type = list(string)
}

variable "groups_allowed_to_unprotect" {
  type = list(string)
}


