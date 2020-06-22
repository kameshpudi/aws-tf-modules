output "igw_id" {
  description = "The ID of the igw"
  value       = concat(aws_internet_gateway.this.*.id, [""])[0]
}
