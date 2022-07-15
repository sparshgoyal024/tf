resource "google_service_usage_consumer_quota_override" "hdd_nodes" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/hdd_nodes")
  limit = urlencode("/project/zone")
  override_value = "0"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "ssd_nodes" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/ssd_nodes")
  limit = urlencode("/project/zone")
  override_value = "0"
  force = true
 
}

