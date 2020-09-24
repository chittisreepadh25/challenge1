data "aws_ami" "terraform_ami" {
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
resource "aws_instance" "app3-tier" {
    ami                     = data.aws_ami.terraform_ami.id
    instance_type           = "t2.micro"
    count                   = var.count
    key_name                = aws_key_pair.app3tier_key.key_name
    vpc_security_group_ids  = [aws_security_group.sg_22.id]
    subnet_id               = element(var.subnet_ids, count.index)
    tags = {
      Name = "format("3apptier-%03d", count.index + 1)"
    }
    provisioner "local-exec" {
      command = "sleep 200 && ansible-playbook -i '${aws_instance.terraform_demo.public_ip}', --private-key ~/.ssh/id_rsa -u centos apache.yaml"
    }
}

