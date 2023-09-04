provider "aws" {
  region = local.region
}

resource "aws_instance" "section2_vm" {
  ami           = local.ami //Ubuntu AMI
  instance_type = local.type

  tags = {
    Name = local.name_tag
  }
}