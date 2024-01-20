resource "aws_vpc" "vpc-danyal-us-east-1" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "VPC: vpc-danyal-us-east-1"
  }
}
