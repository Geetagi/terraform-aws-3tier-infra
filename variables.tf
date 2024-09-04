variable "web_subnet_id" {
  description = "ID of the subnet where web instances will be launched"
  type        = string
}

variable "app_subnet_id" {
  description = "ID of the subnet where app instances will be launched"
  type        = string
}

variable "db_subnet_id" {
  description = "ID of the subnet where database instances will be launched"
  type        = string
}

variable "web_sg_id" {
  description = "ID of the security group for web instances"
  type        = string
}

variable "app_sg_id" {
  description = "ID of the security group for app instances"
  type        = string
}

variable "db_sg_id" {
  description = "ID of the security group for database instances"
  type        = string
}