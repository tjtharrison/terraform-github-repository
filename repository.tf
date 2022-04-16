resource "github_repository" "this" {
  name                 = var.repo_name
  description          = var.repo_description
  vulnerability_alerts = true
  visibility           = var.repo_visibility
  auto_init            = true
}
