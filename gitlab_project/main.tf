
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}

data "gitlab_group" "git_group" {
  for_each = var.git_project
  full_path = each.value.group_path
}


resource "gitlab_project" "example" {
  for_each = var.git_project
  name        = each.value.project_name
  description = each.value.project_description
  namespace_id = data.gitlab_group.git_group[each.key].group_id

  dynamic "push_rules" { 
     for_each = each.value.push_rules_required ? [true] : []
    content { 
  author_email_regex =   each.value.author_email_regex
  branch_name_regex =     each.value.branch_name_regex 
  commit_committer_check =  each.value.commit_committer_check
  commit_committer_name_check = each.value.commit_committer_name_check
  commit_message_negative_regex = each.value.commit_message_negative_regex 
  commit_message_regex = each.value.commit_message_regex
  deny_delete_tag = each.value.deny_delete_tag 
  file_name_regex = each.value.file_name_regex 
  max_file_size=  each.value.max_file_size
  member_check = each.value.member_check 
  prevent_secrets = each.value.prevent_secrets 
  reject_unsigned_commits = each.value.reject_unsigned_commits
    }
  }
}



#https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/global_level_notifications