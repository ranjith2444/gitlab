variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}
variable project_full_path {
    type = string
    description = " "
  }

  variable level {
    type = string
    description = " "
  }
    # All the below values are only vaild of the level is custom else everything will be disabled.
     variable "close_issue" {
    type = string
    description = " "
  }
   variable "close_merge_request" {
    type = string
    description = " "
  }
   variable "failed_pipeline" {
    type = string
    description = " "
  }
   variable "fixed_pipeline" {
    type = string
    description = " "
  }
   variable "issue_due" {
    type = string
    description = " "
  }
   variable "merge_merge_request" {
    type = string
    description = " "
  }
   variable "merge_when_pipeline_succeeds" {
    type = string
    description = " "
  }
   variable "moved_project" {
    type = string
    description = " "
  }
   variable "new_issue" {
    type = string
    description = " "
  }
   variable "new_merge_request" {
    type = string
    description = " "
  }
   variable "new_note" {
    type = string
    description = " "
  }
     variable "push_to_merge_request" {
    type = string
    description = " "
  }
     variable "reassign_issue" {
    type = string
    description = " "
  }
     variable "reassign_merge_request" {
    type = string
    description = " "
  }
     variable "reopen_issue" {
    type = string
    description = " "
  }
     variable "reopen_merge_request" {
    type = string
    description = " "
  }
     variable "success_pipeline" {
    type = string
    description = " "
  }

