# main.tf
resource "aws_lb" "this" {
  name               = "nextcloud-alb"
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = var.public_subnet_ids
}

resource "aws_lb_target_group" "this" {
  name     = "nextcloud-targets"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "this" {
  count            = length(var.ec2_instance_ids)
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.ec2_instance_ids[count.index]
  port             = 80
}
