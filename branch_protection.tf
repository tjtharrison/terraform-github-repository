resource "github_branch_protection" "default" {
  count            = var.enable_default_branch_protection ? 1 : 0
  repository_id    = var.repo_name
  pattern          = "main"
  enforce_admins   = var.enforce_admins
  allows_deletions = var.allows_deletions

  required_status_checks {
    strict   = false
    contexts = lookup(local.repo_types[var.repo_type], "enforced_checks", [])
  }
}
