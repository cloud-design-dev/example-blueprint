variable "resource_group_id" {
  description = "ID of the resource group."
  type        = string
}


variable "name" {
  description = "Name of the COS instane."
  type        = string
}

variable "cos_storage_class" {
  type        = string
  description = "storage_class"
  default     = "smart"
}

variable "cos_storage_plan" {
  type        = string
  description = "COS plan"
  default     = "standard"
}

variable "vpc_region" {
  description = "Name of the VPC region."
  type        = string
}