resource "gitlab_project_approval_rule" "example-one" {
  project            = 5
  name               = "Example Rule"
  approvals_required = 3
  user_ids           = [50, 500]
  group_ids          = [51]
}



resource "gitlab_project_approval_rule" "example-two" {
  project              = 5
  name                 = "Example Rule 2"
  approvals_required   = 3
  user_ids             = [50, 500]
  group_ids            = [51]
  protected_branch_ids = [gitlab_branch_protection.example.branch_protection_id]
}

# Example using `data.gitlab_user` and `for` loop
data "gitlab_user" "users" {
  for_each = toset(["user1", "user2", "user3"])

  username = each.value
}

resource "gitlab_project_approval_rule" "example-three" {
  project            = 5
  name               = "Example Rule 3"
  approvals_required = 3
  user_ids           = [for user in data.gitlab_user.users : user.id]
}

# Example using `approval_rule` using `any_approver` as rule type
resource "gitlab_project_approval_rule" "any_approver" {
  project            = 5
  name               = "Any name"
  rule_type          = "any_approver"
  approvals_required = 1
}

# Example using `applies_to_all_protected_branches`
resource "gitlab_project_approval_rule" "example-four" {
  project                           = 5
  name                              = "Example Rule 4"
  approvals_required                = 3
  user_ids                          = [50, 500]
  group_ids                         = [51]
  applies_to_all_protected_branches = true
}