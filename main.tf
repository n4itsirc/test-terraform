terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

variable "instance_name_var" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstanceVarName"
}

resource "aws_instance" "app_server" {
  ami           = "ami-02e136e904f3da870"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name_var
  }
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}