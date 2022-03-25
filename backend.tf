terraform {
  backend "s3" {
    bucket = "ta-pascal-project-states-686520628199"
    key    = "talent-academy/labs/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}