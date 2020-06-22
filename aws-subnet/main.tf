resource "aws_subnet" "this" {
  count = var.create_subnet ? 1 : 0
  availability_zone = var.availability_zone
  cidr_block = var.cidr
  map_public_ip_on_launch = var.map_public_ip_on_launch # true # Map public IP to deployed instances in this VPC
  vpc_id = var.vpc_id
  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags,
    var.subnet_tags,
  )
}