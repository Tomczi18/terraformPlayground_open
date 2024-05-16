# Define Local Values in Terraform
locals {
  owners = var.divsion
  environment = var.environment
  name = "${var.divsion}-${var.environment}"
  #name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
  }
} 