

data "ibm_resource_group" "group" {
  name = var.resource_group_name
}

data "ibm_is_zones" "region" {
  region = var.vpc_region
}