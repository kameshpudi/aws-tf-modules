variable "create_igw" {
  description = "Controls if IGW should be created (it affects almost all resources)"
  type        = bool
  default     = true
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
  default     = ""
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "igw_tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
  default     = {}
}