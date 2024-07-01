#configure the AWS provider
provider "aws" {
    region = "us-east-1"
    profile = "terraform-user"
    
}

#storing the state file in s3 bucket
terraform {
  backend "s3" {
    bucket = "abo9-terraform-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "terraform-user"

  }
}
