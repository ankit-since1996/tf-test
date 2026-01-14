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
	type = list(string) 
}
variable "resource_tags"   { 
	type = map(string) 
}
