module "private-sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "private-sg"
  description = "Security group with http & ssh port open for entire VPC block. All egress ports are open"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks      = [var.vpc_cidr_block]
  ingress_rules            = ["ssh-tcp", "http-80-tcp"]
  
  egress_rules = ["all-all"]
  tags = local.common_tags
}