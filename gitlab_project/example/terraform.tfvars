gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"



git_project =  {
   group_manual_group_test_temp1_Project_arina = {
  project_name  = "microsft"
  group_path      = "branch-group-1/support_team"
  project_description = "thsi is the microsft projects"
   
  push_rules_required = false
  author_email_regex = "@gitlab.com$"
  branch_name_regex =  "(feat|fix)\\/*"
  commit_committer_check = true
  commit_committer_name_check = true
  commit_message_negative_regex = "ssh\\:\\/\\/" 
  commit_message_regex = "ssh\\:\\/\\/" 
  deny_delete_tag = false 
  file_name_regex = "(jar|exe)$" 
  max_file_size= 4
  member_check = true 
  prevent_secrets = true 
  reject_unsigned_commits = false 
   }
}
   

