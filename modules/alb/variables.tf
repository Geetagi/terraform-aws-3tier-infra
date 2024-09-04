variable "vpc_id" {
  description = "VPC ID where the ALB will be created"
  type        = string
}

variable "sg_id" {
  description = "Security Group ID to attach to the ALB"
  type        = string
}

variable "subnets" {
  description = "List of subnets for the ALB"
  type        = list(string)
}
