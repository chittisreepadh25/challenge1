terraform {
 required_version = ">= 0.12.0"
}
provider "vault" {
  address = var.vault_address
  token   = var.vault_token
}
data "vault_aws_access_credentials" "aws_credentials" {
  backend = "aws"
  role = "iam-admin"
}
provider "aws" {
  access_key = "${data.vault_aws_access_credentials.aws_credentials.access_key}"
  secret_key = "${data.vault_aws_access_credentials.aws_credentials.secret_key}"
  region = var.region
}
terraform {
 backend "s3" {
 encrypt = true
 bucket = "terraform-state-storage009"
 dynamodb_table = "terraform-state-lock-dynamo009"
 region = "us-east-2"
 key = "global/state/terraform.tfstate"
 }
}
module "network" {
  source = "./modules/network"
}
module "app" {
  source = "./modules/app"
}
module "database" {
  source = "./modules/database"
}