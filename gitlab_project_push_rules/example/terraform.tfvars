gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

project_push_rules = {
  "project1_push_rule" = {
    project_full_path = "ranjith242/singleproject"
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
