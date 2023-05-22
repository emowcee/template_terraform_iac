# Provider configuration for AWS
provider "aws" {
  region = "us-west-2" # Update with your desired region
}

# Variables
variable "instance_type" {
  description = "The EC2 instance type"
  default     = "t2.micro"
}

# EC2 instance resource
resource "aws_instance" "web_server" {
  ami           = "ami-0c94855ba95c71c99" # Replace with your desired AMI ID
  instance_type = var.instance_type

  tags = {
    Name = "Web Server"
  }

  user_data = filebase64("${path.module}/scripts/userdata.sh")
}

# Security group resource
resource "aws_security_group" "web_server_sg" {
  name        = "web_server_sg"
  description = "Security group for the web server"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Output the public IP address of the web server
output "public_ip" {
  value = aws_instance.web_server.public_ip
}
