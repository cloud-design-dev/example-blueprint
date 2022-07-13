output "cos_id" {
  description = "ID of IBM COS instance"
  value       = ibm_resource_instance.cos_instance.guid
}

output "cos_crn" {
  description = "CRN OF COS instance"
  value       = ibm_resource_instance.cos_instance.crn
}

output "backend_collector_bucket" {
  description = "Bucket for backend subnet flowlogs collector"
  value       = ibm_cos_bucket.backend.bucket_name
}

output "frontend_collector_bucket" {
  description = "Bucket for frontend subnet flowlogs collector"
  value       = ibm_cos_bucket.frontend.bucket_name
}