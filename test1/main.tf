

terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}

provider "gitlab" {
  token = var.gitlab_token
}


# Manage group members
resource "gitlab_group_membership" "example_member" {
  group_id = 88998654
  user_id  = 21774009  
  access_level = "developer"  # guest, reporter, developer, maintainer, owner
}

