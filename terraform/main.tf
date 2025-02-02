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