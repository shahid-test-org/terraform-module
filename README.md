provider "aws" {
  region = "ap-south-1"
}

module "ec2-instance" {
  source = "https://github.com/shahid-test-org/terraform-module"
  ami_id = "ami-036896dc7dd257166"
  port = 3389
  cidr = "0.0.0.0/0"
  instance_type = "t2.micro"
  vpc_id = "vpc-03fc242a1657c826c"
}
