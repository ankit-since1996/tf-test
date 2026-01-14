instance_type   = "t3.micro"

ami_id          = "ami-0c55b159cbfafe1f0" # Change to your region's AMI

server_name     = "Jenkins-Demo-Server"

security_groups = ["sg-12345", "sg-67890"]

resource_tags   = {
  Environment = "Dev"
  Project     = "Automation"
}
