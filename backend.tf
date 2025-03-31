terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"  # This is an existing bucket to store terraform tfstate file
    key = "daisy-dynamodb-table-terraform.tfstate" # Path to store tfstate in the S3 bucket
    region = "us-east-1"
    encrypt = true
  }
}