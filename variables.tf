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

# Define variables related to the RDS module.
variable "allocated_storage" {
  description = "The allocated storage size for the RDS instance."
}
variable "engine" {
  description = "The database engine for the RDS instance."
}
variable "engine_version" {
  description = "The version of the database engine."
}
variable "instance_class" {
  description = "The instance class for the RDS instance."
}
variable "db_username" {
  description = "The username for the RDS instance."
}
variable "db_password" {
  description = "The password for the RDS instance."
}

# Define variables related to instance provisioning.
variable "key_name" {
  description = "The name of the SSH key pair for instance access."
}
variable "instance_type" {
  description = "The type of EC2 instance to launch."
}
variable "ami" {
  description = "The ID of the Amazon Machine Image."
}
variable "ebs_block_device_size" {
  description = "The size of the EBS block device."
}
variable "PATH_TO_PRIVATE_KEY" {
  description = "The path to the private SSH key."
}
variable "PATH_TO_PUBLIC_KEY" {
  description = "The path to the public SSH key."
}
variable "INSTANCE_USERNAME" {
  description = "The username for accessing the EC2 instance."
}

# Define variables related to the frontend module.
variable "static_assets_directory" {
  description = "The directory containing static assets."
}
variable "default_root_object" {
  description = "The default root object for the frontend."
}
variable "origin_path" {
  description = "The path to the origin of the frontend content."
}
variable "cloudfront_description" {
  description = "Description for the CloudFront distribution."
}
variable "cloudfront_description2" {
  description = "Another description for the CloudFront distribution."
}

# Define names for ECR repos
# variable "repo_names" {
#   description = "Names of the ECR repositories."
# }

variable "task_network_mode" {
  description = "The network mode for the ECS task."
}
variable "api_stage" {
  description = "The stage name for the API Gateway."
  # default = 
}

variable "services" {
  type        = map(object({
    name                           = string
    taskdefinition_cpu             = string
    taskdefinition_memory          = string
    service_image                  = string
    command                        = string
    # environment                    = string
    healthcheck_path               = string
    # path_part                      = string
    service_port                   = number  
    log_group_name                  = string
    attach_autoscaling    = bool      # Set true or false for attaching autoscaling
  }))
  description = "Configuration for ECS services"
}

variable "api_resources" {
  type        = map(object({
    path_part                      = string
    service_port                   = number 
  }))
  description = "Configuration for api gateway services"
}


variable "path_patterns" { 
    description = "List of path patterns for services"
    type        = list(string)
}

#OpenSearch variables

# # Define OpenSearch Instace with type string
# variable "OpenSearch_instance_type" {
#   type        = string
#   description = "Preferred type of instance for cluster."
# }

# # Define OpenSearch Instace count with type string
# variable "OpenSearch_instance_count" {
#   type        = number
#   description = "Preferred count for instance for cluster."
# }

# # Define OpenSearch ebs Volume type with type string
# variable "ebs_options_volume_type" {
#   type        = string
#   description = "Preferred type of ebs Volume."
# }

# # Define OpenSearch Volume Size with type string
# variable "ebs_options_volume_size" {
#   type        = number
#   description = "Preferred size of ebs"
# }

# # Define Opensearch Master Username
# variable "master_user_name" {
#   type        = string
#   description = "opensearch username"
# }

# # Define Opensearch Master Password
# variable "master_user_password" {
#   type        = string
#   description = "Opensearch password"
# }

# variable "frontend_ssr_image"{
#   type        = string
#   description = "opensearch username"
# }
# variable "ssr_log_group" {
#   type        = string
#   description = "SSR Log Group"
# }

variable "cf_origin_path" {
  type        = string
}

 variable "origin_path_api_gw-cf" {}

# variable "aws_docdb_cluster_instance_class" {
#   description = "choose desired Instance"
# }

# variable "master_username" {
#   description = "Username for db cluster/avoid using reserved key words eg. admin"
# }

# variable "master_password" {
#   description = "Password for db cluster"
# }

# variable "aws_docdb_cluster_parameter_group_family" {
# }

variable "dbname" {
  
}
