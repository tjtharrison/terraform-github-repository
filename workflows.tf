resource "github_repository_file" "this" {
  for_each   = var.enable_workflows ? fileset(path.module, "workflows/${local.repo_types[var.repo_type].workflow_file_prefix}-*") : []
  repository = var.repo_name

  branch              = "main"
  file                = ".github/${each.key}"
  content             = file("${path.module}/${each.key}")
  commit_message      = var.commit_message
  commit_author       = var.commit_author
  commit_email        = var.commit_email
  overwrite_on_create = true
  depends_on = [
    github_repository.this
  ]
}
