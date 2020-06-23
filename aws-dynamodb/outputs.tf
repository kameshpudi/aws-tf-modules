output "this_dynamodb_table_arn" {
  description = "ARN of the DynamoDB table"
  value       = element(concat(aws_dynamodb_table.this.*.arn, list("")), 0)
}

output "this_dynamodb_table_name" {
  description = "ID of the DynamoDB table"
  value       = element(concat(aws_dynamodb_table.this.*.name, list("")), 0)
}

output "this_dynamodb_table_id" {
  description = "ID of the DynamoDB table"
  value       = element(concat(aws_dynamodb_table.this.*.id, list("")), 0)
}