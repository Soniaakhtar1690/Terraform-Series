provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

resource "aws_instance" "this" {
  ami                     = "ami-0360c520857e3138f" 
  instance_type           = "t3.micro"
}
