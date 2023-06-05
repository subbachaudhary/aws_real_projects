variable "project_name" {
  description = "defining project name"
  type        = string
}
variable "env" {
  description = "defining environment name"
  type        = string
}
# Networking related
#####################################
variable "vpc_cidr" {
  type        = string
  description = "CIDR Range for our VPC"
  default     = "192.168.0.0/16"
}
variable "public_subnet_cidr_blocks" {
  default     = ["192.168.1.0/24", "192.168.2.0/24", "192.168.3.0/24"]
  type        = list(string)
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["192.168.4.0/24", "192.168.5.0/24", "192.168.6.0/24"]
  type        = list(string)
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["us-east-1a", "us-east-1b", "us-east-1d"]
  type        = list(string)
  description = "List of availability zones"
}

