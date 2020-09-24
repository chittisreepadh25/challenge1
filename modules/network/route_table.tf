resource "aws_route_table" "terraform_route_table1" {
  vpc_id = aws_vpc.terraform_vpc.id
route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.terrafform_igw.id
  }
tags = {
    Name = var.terraform_route_table1
  }
}
resource "aws_route_table" "terraform_route_table2" {
  vpc_id = aws_vpc.terraform_vpc.id
route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.terrafform_igw.id
  }
tags = {
    Name = var.terraform_route_table2
  }
}


