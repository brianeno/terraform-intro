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

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket. Must be globally unique."
}

variable "table_name" {
  type        = string
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
}