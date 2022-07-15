

resource "google_service_usage_consumer_quota_override" "vm_to_internet_egress_bandwidth" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/vm_to_internet_egress_bandwidth")
  limit = urlencode("/s/project/region")
  override_value = "0"
  force = true
 
}