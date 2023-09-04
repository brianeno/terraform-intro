provider "aws" {
  region = var.region
}

resource "aws_instance" "section3_vm" {
  ami           = var.ami //Ubuntu AMI
  instance_type = var.instance_type

  tags = {
    Name = var.name_tag
  }
}