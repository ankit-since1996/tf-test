provider "aws" {
  region = var.AWS_REGION
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-kernel-default-x86_64-*"]
  }
}


resource "aws_instance" "web" {
  ami             = var.ami_id
  instance_type = var.instance_type

  # Using the List variable
  vpc_security_group_ids = var.security_groups

  # Using the Map variable
  tags = merge({ Name = var.server_name }, var.resource_tags)
}
