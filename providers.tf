terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "athul_terraform"

    workspaces {
      name = "my-aws"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "4.0.5"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}