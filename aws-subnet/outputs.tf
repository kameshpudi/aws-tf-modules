output "subnet_id" {
  description = "The ID of the Subnet"
  value       = concat(aws_subnet.this.*.id, [""])[0]
}

output "subnet_arn" {
  description = "The ARN of the subnet"
  value       = concat(aws_subnet.this.*.arn, [""])[0]
}

output "subnet_cidr_block" {
  description = "The CIDR block of the subnet"
  value       = concat(aws_subnet.this.*.cidr_block, [""])[0]
}