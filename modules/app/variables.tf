variable "subnet_id" {
  default = [aws_subnet.terraform_subnet1.id, aws_subnet.terraform_subnet2.id]
}
variable "count" {
  default = 2
}