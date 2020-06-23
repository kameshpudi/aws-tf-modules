output "this_s3_bucket_id" {
  description = "The name of the bucket."
  value       = element(concat(aws_s3_bucket.this.*.id, list("")), 0)
}

/*output "this_s3_bucket_name" {
  description = "The name of the bucket."
  value       = element(concat(aws_s3_bucket.this.*.name, list("")), 0)
}*/

output "this_s3_bucket_arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = element(concat(aws_s3_bucket.this.*.arn, list("")), 0)
}


output "this_s3_bucket_bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = element(concat(aws_s3_bucket.this.*.bucket_domain_name, list("")), 0)
}

output "this_s3_bucket_bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = element(concat(aws_s3_bucket.this.*.bucket_regional_domain_name, list("")), 0)
}

output "this_s3_bucket_region" {
  description = "The AWS region this bucket resides in."
  value       = element(concat(aws_s3_bucket.this.*.region, list("")), 0)
}