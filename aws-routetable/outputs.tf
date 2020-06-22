output "routetable_id" {
  description = "The ID of the routetable ID"
  value       = concat(aws_route_table.this.*.id, [""])[0]
}
