#Create a VPC in US East 1
#Cidr -10.0.0.0/16

resource "aws_vpc" "vpc-danyal-us-east-1" {
    cidr_block = var.vpc_cidr
    tags = {
        Name = "VPC: danyal-us-east-1"
    }
}
