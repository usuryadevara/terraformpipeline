terraform {
  #required_version = "v0.12.18"
  backend "s3" {
    bucket = "tf-state-dev-emr-089255634461"
    key    = "terraform_iam_test.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region                  = var.region
  profile                 = "eab-bigdata"
}

data "aws_caller_identity" "current" {
}

locals {
  s3buckettest = "${var.environment}-eab-buckettest"
}

#EMR Pre Requisties
resource "aws_s3_bucket" "s3testbucket" {
  bucket = local.s3buckettest
  acl    = "private"
  tags = {
    Name               = local.s3buckettest
    EnvType            = var.env_types
    EnvName            = var.env_name
    MaintenanceContact = var.maintenance_contact
    ProductComponent   = var.product_component
    ProductLine        = var.product_line
    Provisioner        = var.provisioner
    OwnerContact       = var.owner_contact
  }
}



