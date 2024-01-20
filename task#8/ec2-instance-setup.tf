data "aws_subnet" "Private_subnet" {
  filter {
    name = "tag:Name"
    values = ["Subnet-Private : Private Subnet 1"]
  }

  depends_on = [
    aws_route_table_association.private_subnet_association
  ]
}

resource "aws_instance" "ec2_example" {
  ami = "ami-079db87dc4c10ac91"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2 Private subnet 1"
  }
  key_name= "aws_key"
  subnet_id = data.aws_subnet.Private_subnet.id
  vpc_security_group_ids = [aws_security_group.sg_vpc_danyal_us_east_1.id]
}

resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDCl+UyN0UVqo6kQrX8kzROUuI3gTk6Pqvtzkli+v+i9kKeRJ5tIQXQxFqZui7dnwuitCVcYN35vnOXJjje+Hl6kDcm04qPptWTLXfgd0yAsCeOnnz7LdrgxhN6hFgYJ1q4QmXbhF3o2+s3QJslaVqePENGaYPUbaJc4zNXe0L25ycd0YH3I+k/0MM+JgS5XQ9NviAob2l8ST5w5emKpsDUQTHIa6Pv2UeEzBaKZkCc+Aqfm2H8VUdTRCMDdu01A1MuAzPw9NED8bWKHtXsC2ipolrqm1TlQ2Uymfqedzeyu6YLKV68vP7u3PNQVqfJgWwGvbuKisLRt+6PlIIsqA+7UEIsbkoWFMmG09AZ1gflcW2wXHtguYSHyfNZP3GMdqjrqRE1/e4HZ6HtIkTW4fcbuftmXxGXrRJVe7hkrpmQaalT414d9DU+4G7HP9FmBWqiVVbd0/vpUH9dmjsQbjxagijOxc09EIBob2bKA07RUVEw6jOkK4eLQsPSIeqwivytkDNFP5Mgx0ieMP8oJRpH94yCR53j/YbgaNrf4YI2rlFj8lH3AgViEVnhBjqAX+qReybteZDlZPxgyo2xsnX/Z6B7FwPTxvFvYcVLxWtE7/MG7XDSHCR91JQWXpp2WmLg4BQJVPQLObwykeq9ajTsHfEPP5k8VQLJCCeViMImcQ== danyalkhanzada@Danyals-MacBook-Air.local"
}
# output "fetched_info_from_aws" {
#   value = format("%s%s","ssh -i /Users/rahulwagh/.ssh/aws_ec2_terraform ubuntu@",aws_instance.ec2_example.public_dns)
# }