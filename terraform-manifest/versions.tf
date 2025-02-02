# Terraform Block
terraform {
  required_version = ">= 1.0" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  #   # Adding Backend as S3 for Remote State Storage
  # backend "s3" {
  #   bucket = "terraform-on-aws-for-ec2"
  #   key    = "dev/project2-app1/terraform.tfstate"
  #   region = "us-east-1" 

  #   # Enable during Step-09     
  #   # For State Locking
  #   dynamodb_table = "dev-project2-app1"    
  # }     
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}



# data "terraform_remote_state" "vpc" {
#   backend = "s3"
#   config = {
#     bucket = "terraform-on-aws-for-ec2"
#     key    = "dev/project1-vpc/terraform.tfstate"
#     region = "us-east-1"
#   }
# }
