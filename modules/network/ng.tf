resource "aws_internet_gateway" "terrafform_igw" {
  vpc_id = aws_vpc.terraform_vpc.id
  tags = {
    Name = var.terraform_ig
  }
}
