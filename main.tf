provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "out_first" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.mysg.id]
  key_name               = "newkeypair"
  tags = {
    Name = "Final commitment"
}
}
resource "aws_security_group" "mysg" {
  name        = "allow-ssh"
  description = "Allow ssh traffic"
  vpc_id      = var.vpc_id

  ingress {
    description = "allowing iboundssh traffic"
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
  tags = {
    Name = "allow_ssh"
  }
}
