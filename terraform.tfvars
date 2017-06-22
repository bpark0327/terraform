# Configure Terragrunt to use DynamoDB for locking
lock = {
  backend = "dynamodb"
  config {
    state_file_id = "terraform-test"
  }
}
# Configure Terragrunt to automatically store tfstate files in S3
remote_state = {
  backend = "s3"
  config {
    encrypt = "true"
    bucket = "bpark-terraform-remote-state"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}
terragrunt = {
  terraform {
    source = "git::@github.com/DataRecognitionCorporation/terraform_poc
}

