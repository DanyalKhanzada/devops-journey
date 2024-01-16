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
