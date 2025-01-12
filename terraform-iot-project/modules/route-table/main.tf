resource "aws_route_table" "this" {
  vpc_id = var.vpc_id

  dynamic "route" {
    for_each = var.routes
    content {
      cidr_block      = route.value.cidr_block
      gateway_id      = route.value.gateway_id
      nat_gateway_id  = route.value.nat_gateway_id
    }
  }
}
