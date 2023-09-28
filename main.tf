terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "Key_pair_testing"
  tags = {
    Name = "Machine1FromTerraform"
    Type = "AppServer"
    Webserver = "Apache"
    managed-by = "Terraform"
  }
}
