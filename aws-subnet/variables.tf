variable "create_subnet" {
  description = "Controls if Subnets should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "availability_zone" {
  description = "aws azs"
  type        = string
  default     = ""
}
variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "map_public_ip_on_launch" {
  description = "The path of the policy in IAM"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "subnet_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}