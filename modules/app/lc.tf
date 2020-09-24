data "aws_ami" "terraform_ami2" {
  most_recent      = true
  owners           = ["174651067103"]

  filter {
    name   = "description"
    values = ["CentOS7"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}
resource "aws_launch_configuration" "launch_config" {
  image_id               = data.aws_ami.terraform_ami2.id
  instance_type          = "t2.micro"
  security_groups        = [aws_security_group.sg_22.id]
  key_name               = aws_key_pair.terraform_demo_key.key_name
  lifecycle {
    create_before_destroy = true
  }
}