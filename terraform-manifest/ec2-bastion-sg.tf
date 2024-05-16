module "public-bastion-sg" {
  source = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "public-bastion-sg"
  description = "Security group with ssh port open for entire VPC block. All egress ports are open"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules            = ["ssh-tcp"]
  
  egress_rules = ["all-all"]
  tags = local.common_tags
}