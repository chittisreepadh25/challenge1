variable "region" {
  default = "us-east-2"
}
variable "cidr_vpc" {
  default = "10.1.0.0/16"
}
variable "terraform_network_tag" {
  default = "terraform_network"
}
variable "cidr_subnet" {
  default = "10.1.1.0/26"
}
variable "terraform_subnet" {
  default = "terraform_subnet"
}
variable "terraform_ig" {
  default = "terraform_ig"
}
variable "terraform_route_table" {
  default = "terraform_rt"
}
variable "terraform_network_acl" {
  default = "terraform_network_acl"
}
variable "terraform_network_sg" {
  default = "terraform_network_sg"
}
variable "terraform_instance_name" {
  default = "terraform-instance2"
}
variable "vault_address" {}
variable "vault_token" {}

