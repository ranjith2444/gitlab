variable "integration_emails_on_push" {
  type = map(object({
    project_full_path           = string
    recipients                  = string  # (String) ID or full-path of the project you want to activate integration on.
    branches_to_be_notified     = string  #(String) Branches to send notifications for. Valid options are all, default, protected, default_and_protected
    disable_diffs               = bool
    push_events                 = bool
    send_from_committer_email   = bool
    tag_push_events             = bool
 }))
}

