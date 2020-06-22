resource "aws_route_table" "this" {
  count = var.create_route_table ? 1 : 0
  vpc_id = var.vpc_id

  route {
      cidr_block = var.cidr
      gateway_id = var.igw_id
  }
  
  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags,
    var.routetable_tags,
  )
}

resource "aws_route_table_association" "this" {
  count = var.create_route_table ? 1 : 0
  subnet_id = var.subnet_id
  route_table_id = aws_route_table.this[count.index].id
}