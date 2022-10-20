terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-535268269273"
    key            = "challenge/ring_challenge35/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}

