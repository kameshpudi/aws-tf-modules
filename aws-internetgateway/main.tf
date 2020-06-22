resource "aws_internet_gateway" "this" {
  count = var.create_igw ? 1 : 0
  vpc_id = var.vpc_id
  tags = merge(
    {
      "Name" = format("%s", var.name)
    },
    var.tags,
    var.igw_tags,
  )
}