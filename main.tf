terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
  backend "s3" {
    bucket = "dev.ksanchu"
    key    = "terraform/backend/example_key"
    region = "us-west-1"
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0fa12818adfd95e6e"
  instance_type = "t2.nano"
  subnet_id = "subnet-b5885dd3"
  vpc_security_group_ids = [
    "sg-0bfec19ecf44c33b9",
  ]

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

