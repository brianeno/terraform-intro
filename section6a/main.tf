terraform {

  backend "s3" {
    bucket         = "bucket-ti-brianeno"
    key            = "brianeno/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "table-ti-brianeno"
    encrypt        = true
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "section6_vm" {
  ami           = var.ami //Ubuntu AMI
  instance_type = var.instance_type

  tags = {
    Name = var.name_tag
  }
}

