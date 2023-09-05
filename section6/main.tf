provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "section6_state" {

  bucket = var.bucket_name

  // You should not copy this for production SCENARIOS
  force_destroy = true
  tags = {
    Name = "S3 Remote TF State Store"
  }
}

# Enable versioning so you can see the history of your state
resource "aws_s3_bucket_versioning" "enabled" {
  bucket = aws_s3_bucket.section6_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption by default
resource "aws_s3_bucket_server_side_encryption_configuration" "default" {
  bucket = aws_s3_bucket.section6_state.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Explicitly block all public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "public_access" {
  bucket                  = aws_s3_bucket.section6_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_dynamodb_table" "section6_locks" {
  name         = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB State Lock Table"
  }
}


