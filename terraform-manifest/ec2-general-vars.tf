variable "aws_region" {
    description = "Region in which AWS Resources to be created"
    type = string
    default = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_keypair" {
  description = "AWS EC2 Key Pair assiciated with Instance"
  type = string
  default = "terraform-key"
}

variable "environment" {
  description = "Enviroment Variable used as prefx"
  type = string 
  default = "dev"
}

variable "divsion" {
  description = "Division name used for identification"
  type = string 
  default = "auto"
}

variable "private_instance_count" {
  description = "Amount of private instances"
  type = number
  default = 1
}