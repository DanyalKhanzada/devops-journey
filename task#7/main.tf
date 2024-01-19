provider "aws" {
    region = "us-east-1"
    # access_key = ""
    # secret_key = ""

}

resource "aws_instance" "linux" {
    ami = "ami-079db87dc4c10ac91"
    instance_type = "t2.micro"

    tags = {
        Name = "devops-journey"
    }
}

resource "aws_key_pair" "deployer" {
  key_name   = "devops_journey.pem"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCtHqEuuko/DGSWB2OJwVerSSQjkRpqm+yINXZCaS7k7fzjQg70VKtcg/MJr/PQlVehyo1HJMsIfEmWCAHWdvQlqPG8Qfd863B6UmF5H7GJneHWj0jakIrlcSwI4tnOed895QECfkPLPtTbCczk1bdTBUDlM+6yrh+cWRjLlr9R/X952xqAifgTtdbmjkGIV+jb8m5p8UasXqbpCNrG7dFXbGUkdo2B9zMeBQl3FAgQ3/E9mbRvYwA4v5yiiC5crltOW7Oozh8y/nM6/z1Ip+YthbQXZPUNaWPpfJmTrr/mbBD5SrUZ7VUYkFlvANYdXKS3gnCdmotOorr8yavVfhEN"
}
# resource "tls_private_key" "devops_journey" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }


# output "key_name" {
#   value = aws_key_pair.deployer.key_name
# }