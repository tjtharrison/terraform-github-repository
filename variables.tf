variable "repo_name" {
  description = "The name of the repository to create"
}

variable "enable_workflows" {
  description = "Whether to deploy Workflows to the repo"
  default     = true
  type        = bool
}

variable "enable_secrets" {
  description = "Whether to deploy Secrets to the repo"
  default     = true
  type        = bool
}

variable "repo_type" {
  description = "The type of repository to be deployed"
  validation {
    condition     = can(regex("terraform-module|terraform-deploy", var.repo_type))
    error_message = "Must be one of terraform-module, terraform-deploy."
  }
}

variable "commit_message" {
  description = "The message to use on commits to repositories"
  default     = "Deployed by Terraform"
}

variable "commit_author" {
  description = "The author to display on commits to repositories"
  default     = "Terraform"
}

variable "commit_email" {
  description = "The email address to use on commits to repositories"
}

variable "repo_visibility" {
  description = "The visibility of the repository"
  default     = "private"
}

variable "repo_description" {
  description = "Description of the function of the repository"
}

variable "additonal_secrets" {
  description = "Additional secrets to attach to the repository"
  type        = list(string)
  default     = []
}

variable "secret_values" {
  description = "Secret values to be available to the repositories. Should be in the format \"SECRET_NAME = secret\""
  type        = map(string)
  default     = {}
}

variable "enable_default_branch_protection" {
  description = "Enable branch protection for default branch"
  default     = true
  type        = bool
}

variable "enforce_admins" {
  description = "Enclude enforcement of protections for admin users"
  default     = false
  type        = bool
}

variable "allows_deletions" {
  description = "Allow branch deletion"
  default     = true
  type        = bool
}
