terraform {
  backend "s3" {
    # Replace with your actual bucket & DynamoDB table created beforehand
    bucket         = "REPLACE_WITH_YOUR_TFSTATE_BUCKET_prod"
    key            = "eks/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "REPLACE_WITH_YOUR_DYNAMODB_TABLE"
    encrypt        = true
  }
}
