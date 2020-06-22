variable "create_route_table" {
  description = "Controls if route table should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "igw_id" {
  description = "Internet Gateway ID"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Subnet ID"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "routetable_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}