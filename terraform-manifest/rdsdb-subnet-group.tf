resource "aws_db_subnet_group" "rdsdb_subg" {
  name       = "rds-subg"
  subnet_ids = module.vpc.private_subnets

  tags = {
    Name = "My DB subnet group"
  }
}