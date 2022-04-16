resource "github_actions_secret" "this" {
  for_each        = var.enable_secrets ? toset(local.repo_types[var.repo_type].secrets) : []
  repository      = var.repo_name
  secret_name     = each.key
  plaintext_value = var.secret_values[each.key]
  depends_on = [
    github_repository.this
  ]
}
