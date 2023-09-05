// input variables, values in nonprod.tfvars
variable "region" {
  type        = string
  description = "region we will us"
}

variable "bucket_name" {
  type        = string
  description = "The name of the S3 bucket. Must be globally unique."
}

variable "table_name" {
  type        = string
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
}