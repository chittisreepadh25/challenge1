output "arn_id" {
  value = aws_instance.terraform_demo.*.arn
}
output "associate_public_ip_address" {
  value = aws_instance.terraform_demo.*.associate_public_ip_address
}
output "key_name" {
  value = aws_instance.terraform_demo.*.key_name
}
output "availability_zone" {
  value = aws_instance.terraform_demo.*.availability_zone
}
output "cpu_core_count" {
  value = aws_instance.terraform_demo.*.cpu_core_count
}
output "cpu_threads_per_core" {
  value = aws_instance.terraform_demo.*.cpu_threads_per_core
}
output "host_id" {
  value = aws_instance.terraform_demo.*.host_id
}
output "id" {
  value = aws_instance.terraform_demo.*.id
}
output "instance_state" {
  value = aws_instance.terraform_demo.*.instance_state
}
output "ipv6_address_count" {
  value = aws_instance.terraform_demo.*.ipv6_address_count
}
output "ipv6_addresses" {
  value = aws_instance.terraform_demo.*.ipv6_addresses
}
output "network_interface_id" {
  value = aws_instance.terraform_demo.*.network_interface_id
}
output "password_data" {
  value = aws_instance.terraform_demo.*.password_data
}
output "placement_group" {
  value = aws_instance.terraform_demo.*.placement_group
}
output "primary_network_interface_id" {
  value = aws_instance.terraform_demo.*.primary_network_interface_id
}
output "private_dns" {
  value = aws_instance.terraform_demo.*.private_dns
}
output "private_ip" {
  value = aws_instance.terraform_demo.*.private_ip
}
output "public_dns" {
  value = aws_instance.terraform_demo.*.public_dns
}
output "public_ip" {
  value = aws_instance.terraform_demo.*.public_ip
}
output "security_groups" {
  value = aws_instance.terraform_demo.*.security_groups
}
output "subnet_id" {
  value = aws_instance.terraform_demo.*.subnet_id
}
output "tenancy" {
  value = aws_instance.terraform_demo.*.tenancy
}
output "volume_tags" {
  value = aws_instance.terraform_demo.*.volume_tags
}
output "vpc_security_group_ids" {
  value = aws_instance.terraform_demo.*.vpc_security_group_ids
}
