resource "aws_subnet" "terraform_subnet1" {
  vpc_id = aws_vpc.terraform_vpc.id
  cidr_block = var.cidr_subnet
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-northeast-2a"
  tags = {
    Name = var.terraform_subnet1
  }
}
resource "aws_subnet" "terraform_subnet2" {
  vpc_id = aws_vpc.terraform_vpc.id
  cidr_block = var.cidr_subnet
  map_public_ip_on_launch = "true"
  availability_zone       = "ap-northeast-2b"
  tags = {
    Name = var.terraform_subnet2
  }
}

