resource "aws_lb" "network_load_balancer" {
  name_prefix = var.name_prefix
  subnets     = var.subnet_ids
  tags        = var.tags

  enable_deletion_protection = true

  load_balancer_type = "network"

  dynamic "subnet_mapping" {
    for_each = var.subnet_ids
    content {
      subnet_id = subnet_mapping.value
    }
  }
}

resource "aws_lb_target_group" "nlb_target_group" {
  name_prefix = var.name_prefix
  port        = var.target_group_port
  protocol    = var.target_group_protocol
  vpc_id      = var.vpc_id
  tags        = var.tags

  health_check {
    port     = var.target_group_health_check_port
    protocol = var.target_group_health_check_protocol
  }

  depends_on = [
    aws_lb.network_load_balancer
  ]
}

resource "aws_lb_listener" "nlb_listener" {
  load_balancer_arn = aws_lb.network_load_balancer.arn
  port              = var.listener_port
  protocol          = var.listener_protocol

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.nlb_target_group.arn
  }
}

output "nlb_arn" {
  value = aws_lb.network_load_balancer.arn
}

output "nlb_dns_name" {
  value = aws_lb.network_load_balancer.dns_name
}
