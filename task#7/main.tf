provider "aws" {
    region = "us-east-1"
    access_key = "AKIAZR4AG2ULJQT4JTH5"
    secret_key = "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"
}

resource "aws_instance" "linux" {
    ami = "ami-079db87dc4c10ac91"
    instance_type = "t2.micro"

    tags = {
        Name = "devops-journey"
    }
}
