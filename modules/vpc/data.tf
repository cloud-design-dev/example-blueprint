

data "ibm_resource_group" "group" {
  name = var.resource_group_name
}

data "ibm_is_zones" "region" {
  region = var.vpc_region
}

data "ibm_is_ssh_key" "regional" {
  name = var.ssh_key_name
}