#---------------------------------
#terraform configuration
#---------------------------------
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.76.1"
    }
  }
  backend "s3" {
    bucket  = "tastylog-tfstate-bucket-rt"
    key     = "tastylog-dev.tfstate"
    region  = "ap-northeast-1"
    profile = "terraform"

  }
}
#----------------------------------
#provider
#----------------------------------
provider "aws" {
  region = "ap-northeast-1"
}
#----------------------------------
#Variables
#----------------------------------
variable "project" {
  type = string
}

variable "environment" {
  type = string
}