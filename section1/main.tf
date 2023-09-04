provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "section1_vm" {
  ami           = "ami-0c65adc9a5c1b5d7c" //Ubuntu AMI
  instance_type = "t2.micro"

  tags = {
    Name = "My EC2 instance",
  }
}