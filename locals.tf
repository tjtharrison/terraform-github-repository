locals {
  repo_types = {
    "terraform-module" = {
      workflow_file_prefix = "tf-module"
      secrets              = concat(["AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY", "TERRAFORM_ROLE_ARN"], var.additonal_secrets)
    }
    "terraform-deploy" = {
      workflow_file_prefix = "tf-deploy"
      enforced_checks      = ["terraform_plan"]
      secrets              = concat(["DEPLOY_SSH_PRIVATE_KEY", "INFRACOST_API_KEY", "PGP_SIGNING_KEY", "AWS_ACCESS_KEY_ID", "AWS_SECRET_ACCESS_KEY", "TERRAFORM_ROLE_ARN"], var.additonal_secrets)
    }
  }
}
