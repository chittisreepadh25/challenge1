resource "aws_vpc" "terraform_vpc" {
  cidr_block = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = var.terraform_network_tag
  }
}
