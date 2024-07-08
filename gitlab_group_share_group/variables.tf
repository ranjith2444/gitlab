variable "group_share_group" {
   type = map(object({
main_group_to_be_shared       = string
  group_which_shares_main_group = string
  group_access                  = string
  expires_at                    = string
   }))
}