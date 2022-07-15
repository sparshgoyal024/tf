

locals {
  compute_project_day = ["default",
  "get_serial_port_output_requests",
  "license_insert_requests",
  "license_verification_requests",
  "recommend_locations_requests",
  "simulate_maintenance_event_requests"]

}



resource "google_service_usage_consumer_quota_override" "compute_1" {
  provider = google-beta
  for_each   = toset(local.compute_project_day)
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/${each.key}")
  limit = urlencode("/d/project")
  override_value = "0"
  force = true
 
}