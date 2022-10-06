variable "name" {
  type        = string
  description = "The name of the ECS cluster."
}

variable "subnets" {
  type        = list(string)
  description = "The subnets to use for ECS-EC2 instances."
  validation {
    condition     = length(var.subnets) == 3
    error_message = "Must provide exactly 3 subnets"
  }
}

variable "architecture" {
  type        = string
  description = "The machine architecture to use for ECS-EC2 instances (amd64 or arm64)."
  default     = "arm64"
}

variable "instance_type" {
  type        = string
  description = "The instance type to use for ECS-EC2 instances."
  default     = "t4g.micro"
}

variable "min_capacity" {
  type        = number
  description = "The minimum number of ECS-EC2 instances."
  default     = 1
}

variable "max_capacity" {
  type        = number
  description = "The maximum number of ECS-EC2 instances."
  default     = 1
}

variable "min_spot_capacity" {
  type        = number
  description = "The minimum number of ECS-EC2 Spot instances."
  default     = 1
}

variable "max_spot_capacity" {
  type        = number
  description = "The maximum number of ECS-EC2 Spot instances."
  default     = 1
}

variable "ssh_public_key" {
  type        = string
  description = "The SSH public key to authorize on ECS-EC2 instances."
  default     = "disabled"
}

variable "security_group_ids" {
  type        = list(string)
  description = "The security groups to use for ECS-EC2 instances."
}