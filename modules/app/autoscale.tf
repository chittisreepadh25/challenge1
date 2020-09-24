data "aws_availability_zones" "availability_zones" {
  all_availability_zones = true
}
resource "aws_autoscaling_group" "auto_scale" {
  launch_configuration = aws_launch_configuration.launch_config
  availability_zones = data.aws_availability_zones.availability_zones.name
  min_size = 2
  max_size = 10
  load_balancers = aws_elb.elb.name
  health_check_type = "ELB"
  tag {
    key = "Name"
    value = "terraform-autoscaling-group"
    propagate_at_launch = true
  }
}