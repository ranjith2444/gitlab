variable "gitlab_token" {
  description = "The GitLab personal access token"
  type        = string
}


variable "pipeline_schedule_and_variable" {
  type = map(object({
    project_full_path = string
    description       = string
    active            = bool       # Optional =  The activation of pipeline schedule. If false is set, the pipeline schedule will deactivated initially.
    reference         = string
    cron              = string 
    cron_timezone     = string     # Optional =  The timezone
    take_ownership    = bool       # Optional =  When set to true, the user represented by the token running Terraform will take ownership of the scheduled pipeline prior to editing it. This can help when managing scheduled pipeline drift when other users are making changes outside Terraform.
    schedule_varibales         = map(string)
 }))
}



