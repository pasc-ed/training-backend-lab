resource "aws_s3_bucket" "states_buckets" {
    bucket = "ta-pascal-project-states-686520628199"

    lifecycle {
      prevent_destroy = true
    }

    tags = {
        Name = "ta-pascal-project-states"
        Environment = "Talent-Academy"
    }
}

resource "aws_s3_bucket_versioning" "version_my_bucket" {
  bucket = aws_s3_bucket.states_buckets.id

  versioning_configuration {
    status = "Enabled"
  }
}