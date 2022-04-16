# terraform-github-repository

Terraform module for Github repo with trimmings

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_branch_protection.default](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additonal_secrets"></a> [additonal\_secrets](#input\_additonal\_secrets) | Additional secrets to attach to the repository | `list(string)` | `[]` | no |
| <a name="input_allows_deletions"></a> [allows\_deletions](#input\_allows\_deletions) | Allow branch deletion | `bool` | `true` | no |
| <a name="input_commit_author"></a> [commit\_author](#input\_commit\_author) | The author to display on commits to repositories | `string` | `"Terraform"` | no |
| <a name="input_commit_email"></a> [commit\_email](#input\_commit\_email) | The email address to use on commits to repositories | `any` | n/a | yes |
| <a name="input_commit_message"></a> [commit\_message](#input\_commit\_message) | The message to use on commits to repositories | `string` | `"Deployed by Terraform"` | no |
| <a name="input_enable_default_branch_protection"></a> [enable\_default\_branch\_protection](#input\_enable\_default\_branch\_protection) | Enable branch protection for default branch | `bool` | `true` | no |
| <a name="input_enable_secrets"></a> [enable\_secrets](#input\_enable\_secrets) | Whether to deploy Secrets to the repo | `bool` | `true` | no |
| <a name="input_enable_workflows"></a> [enable\_workflows](#input\_enable\_workflows) | Whether to deploy Workflows to the repo | `bool` | `true` | no |
| <a name="input_enforce_admins"></a> [enforce\_admins](#input\_enforce\_admins) | Enclude enforcement of protections for admin users | `bool` | `false` | no |
| <a name="input_repo_description"></a> [repo\_description](#input\_repo\_description) | Description of the function of the repository | `any` | n/a | yes |
| <a name="input_repo_name"></a> [repo\_name](#input\_repo\_name) | The name of the repository to create | `any` | n/a | yes |
| <a name="input_repo_type"></a> [repo\_type](#input\_repo\_type) | The type of repository to be deployed | `any` | n/a | yes |
| <a name="input_repo_visibility"></a> [repo\_visibility](#input\_repo\_visibility) | The visibility of the repository | `string` | `"private"` | no |
| <a name="input_secret_values"></a> [secret\_values](#input\_secret\_values) | Secret values to be available to the repositories. Should be in the format "SECRET\_NAME = secret" | `map(string)` | `{}` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->