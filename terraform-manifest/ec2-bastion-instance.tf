# AWS EC2 Instance Terraform Module
# EC2 Instances that will be created in VPC Private Subnets
module "ec2_public" {
  depends_on = [ module.vpc ] # VERY VERY IMPORTANT else userdata webserver provisioning will fail
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "2.17.0"
  # insert the 10 required variables here
  name                   = "${var.environment}-BastionHost"
  ami                    = data.aws_ami.amazon-linux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair

  vpc_security_group_ids = [module.public-bastion-sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]  
  tags = local.common_tags
}


