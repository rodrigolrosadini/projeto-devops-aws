terraform {
  backend "s3" {
    bucket  = "terraform-state-<projeto>"
    key     = "site/terraform.tfstate"
    region  = "us-east-2"
    encrypt = true
  }
}
