variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed to SSH"
  type        = string
}

variable "single_nat_gateway" {
  description = "Use a single NAT Gateway across all private subnets (cost optimization for non-prod)"
  type        = bool
  default     = false
}

variable "enable_nat_gateway" {
  description = "Enable NAT Gateway resources and private subnet default internet routes"
  type        = bool
  default     = true
}

variable "kms_key_arn" {
  description = "KMS key ARN for CloudWatch log encryption"
  type        = string
}

variable "flow_log_retention_days" {
  description = "Retention period for VPC flow logs"
  type        = number
  default     = 365
}
