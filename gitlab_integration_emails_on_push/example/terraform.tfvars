gitlab_token = "glpat-Pycm4Zq3X4QS-NyDMPRU"

integration_emails_on_push = {
  "project1_member" = {
    project_full_path           = "manual_group_test/temp1/test1project"
    recipients                  = "ranjith@gmail.com pradeep@gmail.com brendan@mail.com"  # (String) ID or full-path of the project you want to activate integration on.
    branches_to_be_notified     = "all"  #(String) Branches to send notifications for. Valid options are all, default, protected, default_and_protected
    disable_diffs               = false
    push_events                 = false
    send_from_committer_email   = false
    tag_push_events             = false
}
}
