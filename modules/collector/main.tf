resource "ibm_is_flow_log" "backend" {
  name           = "${var.name}-backend-subnet-flow-log"
  target         = var.backend_subnet_id
  active         = true
  storage_bucket = var.backend_collector_bucket
  resource_group = var.resource_group_id
  tags           = ["vpc:${var.name}-vpc"]
}

resource "ibm_is_flow_log" "frontend" {
  name           = "${var.name}-frontend-subnet-flow-log"
  target         = var.frontend_subnet_id
  active         = true
  storage_bucket = var.frontend_collector_bucket
  resource_group = var.resource_group_id
  tags           = ["vpc:${var.name}-vpc"]
}