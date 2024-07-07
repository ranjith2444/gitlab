gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

pipeline_schedule_and_variable = {
  "project1_member" = {
    project_full_path = "manual_group_test/temp1/test1project"
    description       = "this is first desc"
    active            = true       # Optional =  The activation of pipeline schedule. If false is set, the pipeline schedule will deactivated initially.
    reference         = "refs/heads/main"    # branch name 
    cron              =  "0 1 * * *"  
    cron_timezone     = "UTC+12"     # Optional =  The timezone
    take_ownership    = true       # Optional =  When set to true, the user represented by the token running Terraform will take ownership of the scheduled pipeline prior to editing it. This can help when managing scheduled pipeline drift when other users are making changes outside Terraform.
     schedule_varibales = {                     
      "Created_By" = "Ploceus",
      "Department" = "CIS"
    }
}
}
