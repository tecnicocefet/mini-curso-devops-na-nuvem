terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.93"
    }
  }
}

provider "aws" {
  region = var.assume_role.region

  assume_role {
    role_arn = var.assume_role.role_arn
  }

  default_tags {
    tags = var.tags 
  }
}

resource "random_id" "suffix" {
  byte_length = 4  # Gera um sufixo aleatório (ex: a1b2c3d4)
}