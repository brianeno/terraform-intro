// input variables, values in nonprod.tfvars
variable "region" {
  type        = string
  description = "region we will us"
}

variable "name_tag" {
  type        = string
  description = "Name of the EC2 instance"
}

variable "ami" {
  type        = string
  description = "Ubuntu AMI ID in US West Region"
}

variable "instance_type" {
  type        = string
  description = "Instance type"
}
