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
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDUHb7YjwAcTFrKAoh778NN6qe8oR6Hxr9hg04D/byIicJ9tyk880y2da2vVwpL0Ya3yuzBIb9A8yzTNUJ2j/aQ6sKbmYGtjVixfjItzm3nZ2SHddqS2Fd8aSGoo5RZ4I8XO9DgAhlUf+Eu9w399pq/oG8Z+Taz6es3l2VDBoXlf1i2UyUEbLWOd38cQAHlT2vYCy5+/iIJNcVDpRfPopt8lfPPs/ImxtERS7LCIrukpKrhNTYzhCCNIDE6n72ZPSA/UhU+PLwLn2lgyp+u6OH23rYW+j163qzg1es5GOQeLX8EcAqA7RniHgsp6D9Z3C96YaMNftGTsai5P1ytoBwErgm0G5S2+rD5jlkLLjeL6N1USAHEHCA6V/kZn8F/51CgQAuFfMpt1d9YdIc+CogyB+hGdfZ92rPQq70i4rKBI/rm99K/k7zsr3gfgWsun1y234beUyqN0RDtfyHBoEt6FSVvkJnuELZYU3ocmLx76LNpJpm5aF39hUSiPwNs4/E= danyalkhanzada@Danyals-Air.cogeco.local"
}

# resource "tls_private_key" "devops_journey" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }


# output "key_name" {
#   value = aws_key_pair.deployer.key_name
# }