
terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = ">= 3.0.0"
    }
  }
}


#https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/global_level_notifications