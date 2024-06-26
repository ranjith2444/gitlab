variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}


variable "git_project" {
   type = map(object({
  project_name  = string
  group_path      = string
  project_description = string
   
  push_rules_required = string
  author_email_regex =string 
  branch_name_regex =string 
  commit_committer_check = bool
  commit_committer_name_check =bool
  commit_message_negative_regex =string 
  commit_message_regex =string 
  deny_delete_tag =bool 
  file_name_regex =string 
  max_file_size= number
  member_check =bool 
  prevent_secrets =bool 
  reject_unsigned_commits =bool 
   }))
}