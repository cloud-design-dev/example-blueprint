resource "ibm_resource_instance" "cos_instance" {
  name              = "${var.name}-cos-instance"
  service           = "cloud-object-storage"
  plan              = "standard"
  location          = "global"
  resource_group_id = var.resource_group_id
  tags              = ["vpc:${var.name}-vpc"]
}

resource "ibm_cos_bucket" "frontend" {
  bucket_name          = "${var.name}-${var.vpc_region}-frontend-bucket"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  region_location      = var.vpc_region
  storage_class        = var.cos_storage_class
}

resource "ibm_cos_bucket" "backend" {
  bucket_name          = "${var.name}-${var.vpc_region}-backend-bucket"
  resource_instance_id = ibm_resource_instance.cos_instance.id
  region_location      = var.vpc_region
  storage_class        = var.cos_storage_class
}