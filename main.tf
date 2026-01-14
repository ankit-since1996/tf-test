provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Using the List variable
  vpc_security_group_ids = var.security_groups

  # Using the Map variable
  tags = merge({ Name = var.server_name }, var.resource_tags)
}
