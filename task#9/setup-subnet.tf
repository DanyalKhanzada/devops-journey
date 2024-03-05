# Setup public subnet
resource "aws_subnet" "aws_danyal_public_subnet" {
    count               = length(var.cidr_public_subnet) // Create loop for creating 2 subnets
    vpc_id              = aws_vpc.vpc-danyal-us-east-1.id
    cidr_block          = element(var.cidr_public_subnet, count.index)
    availability_zone   = element(var.us_availability_zone, count.index)

    tags = {
        Name = "Subnet-Public : Public Subnet ${count.index + 1}"
    }
}