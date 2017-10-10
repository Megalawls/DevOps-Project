provider "aws" {
  region     = "eu-west-2"
}

data "aws_vpc" "pinkvpc" {
  id = "vpc-69dc9b00"
}

resource "aws_instance" "agent" {
  ami           = "ami-c19486a5"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"

  vpc_security_group_ids  = ["sg-d8b050b0"]
  subnet_id = "subnet-b0d8a9cb"

  key_name = "pinkkeys"
  
  tags {
    "Name" = "pinkterraform"
    "group" = "pink"
  }
}
