variable "tags" {
  default = [
    "blueprint"
  ]
}

variable "name" {
  description = "Name that will be prepended to all deployed resources."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group to use for VPC resources."
  type        = string
}

variable "vpc_region" {
  description = "The IBM Cloud Region where the VPC and associated resources will be deployed."
  type        = string
}

variable "ssh_key_name" {
  description = "The name of the SSH key to use for the VPC."
  type        = string
}