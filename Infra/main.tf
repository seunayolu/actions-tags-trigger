data "aws_caller_identity" "current" {}


resource "aws_s3_bucket" "innocent-tf-bucket" {
  bucket = "${local.name_prefix}-app-data-${data.aws_caller_identity.current.account_id}"

  tags = local.common_tags
}

resource "aws_s3_bucket_versioning" "innocent-tf-bucket-version" {
  bucket = aws_s3_bucket.innocent-tf-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}