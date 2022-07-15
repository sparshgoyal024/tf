resource "google_service_usage_consumer_quota_override" "override_gcs" {
  provider = google-beta
  project = each.key
  service = "storage.googleapis.com"
  metric = urlencode("storage.googleapis.com/google_egress_bandwidth")
  limit = urlencode("/s/project/region")
  override_value = "200000000"
  force = true
  dimensions = {
    "region" = "us-central1"
  }
}

resource "google_service_usage_consumer_quota_override" "default" {
  provider = google-beta
  project = each.key
  service = "storage-api.googleapis.com"
  metric = urlencode("default")
  limit = urlencode("/d/project")
  override_value = "0"
  force = true
}


resource "google_service_usage_consumer_quota_override" "default_default" {
  provider = google-beta
  project = each.key
  service = "storage-api.googleapis.com"
  metric = urlencode("default")
  limit = urlencode("/100s/project/user")
  override_value = "300"
  force = true
}


resource "google_service_usage_consumer_quota_override" "googleServices" {
  provider = google-beta
  project = each.key
  service = "storage-api.googleapis.com"
  metric = urlencode("googleServices")
  limit = urlencode("/100s/project/user")
  override_value = "300"
  force = true
}

resource "google_service_usage_consumer_quota_override" "turnDown" {
  provider = google-beta
  project = each.key
  service = "storage-api.googleapis.com"
  metric = urlencode("turnDown")
  limit = urlencode("/d/project")
  override_value = "0"
  force = true
}