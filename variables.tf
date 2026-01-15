variable "instance_type" { 
	type = string 
}
variable "ami_id"        { 
	type = string 
}
variable "server_name"   { 
	type = string 
}
variable "security_groups" { 
	description = "Format: Strings as 'value', Lists as ['a','b'], Maps as {'key'='val'}"
	type = list(string) 
}
variable "resource_tags"   { 
    description = "Format: Strings as 'value', Lists as ['a','b'], Maps as {'key'='val'}"
	type = map(string) 
}

# Define variables related to the AWS region.
variable "AWS_REGION" {
  description = "The AWS region where resources will be deployed."
}

# Define the environment variable to specify the deployment environment/name.
variable "env" {
  description = "The name of the deployment environment."
}

# Define variables related to the VPC configuration.
variable "cidr_value" {
  description = "The CIDR block for the VPC."
}
variable "az_names" {
  description = "A list of Availability Zones for the VPC."
}
variable "public_subnet_values" {
  description = "A map of public subnet configurations."
}
variable "private_subnet_values" {
  description = "A map of private subnet configurations."
}
