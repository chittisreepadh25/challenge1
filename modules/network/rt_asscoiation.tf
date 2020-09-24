resource "aws_route_table_association" "terraformdemo_rta_subnet1" {
  subnet_id      = aws_subnet.terraform_subnet1.id
  route_table_id = aws_route_table.terraform_route_table1.id
}
resource "aws_route_table_association" "terraformdemo_rta_subnet2" {
  subnet_id      = aws_subnet.terraform_subnet2.id
  route_table_id = aws_route_table.terraform_route_table2.id
}

