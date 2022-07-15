resource "google_service_usage_consumer_quota_override" "override_gcs" {
  provider = google-beta
  project = var.project
  service = "storage.googleapis.com"
  metric = urlencode("storage.googleapis.com/google_egress_bandwidth")
  limit = urlencode("/s/project/region")
  override_value = "0"
  force = true
}
