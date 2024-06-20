

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
  user_id  = 1234567  # Replace with the GitLab user ID
  access_level = "developer"  # Access levels: guest, reporter, developer, maintainer, owner
}

# Add another member to the group
resource "gitlab_group_membership" "another_member" {
  group_id = 88998654
  user_id  = 2345678  # Replace with the GitLab user ID
  access_level = "maintainer"
}