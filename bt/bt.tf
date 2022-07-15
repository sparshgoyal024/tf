resource "google_service_usage_consumer_quota_override" "nodes_a" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/hdd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-a",

  }
  
 
}

resource "google_service_usage_consumer_quota_override" "nodes_b" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/hdd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-b",

  }
   
 
}

resource "google_service_usage_consumer_quota_override" "nodes_c" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/hdd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-c",

  }
   
 
}


resource "google_service_usage_consumer_quota_override" "nodes_f" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/hdd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-f",

  }
   
 
}


resource "google_service_usage_consumer_quota_override" "ssd_nodes_a" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/ssd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-a",

  }
  
 
}

resource "google_service_usage_consumer_quota_override" "ssd_nodes_b" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/ssd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-b",

  }
   
 
}

resource "google_service_usage_consumer_quota_override" "ssd_nodes_c" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/ssd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-c",

  }
   
 
}


resource "google_service_usage_consumer_quota_override" "ssd_nodes_f" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtable.googleapis.com/ssd_nodes")
  limit = urlencode("/project/zone")
  override_value = "1"
  force = true
  dimensions = {
    "zone" = "us-central1-f",

  }
 
}


resource "google_service_usage_consumer_quota_override" "ReadGroup" {
  provider = google-beta
  project = var.project
  service = "bigtabletableadmin.googleapis.com"
  metric = urlencode("ReadGroup")
  limit = urlencode("/d/project")
  override_value = "1000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "WriteGroup" {
  provider = google-beta
  project = var.project
  service = "bigtabletableadmin.googleapis.com"
  metric = urlencode("WriteGroup")
  limit = urlencode("/d/project")
  override_value = "100"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "backups_write_requests_user" {
  provider = google-beta
  project = var.project
  service = "bigtableadmin.googleapis.com"
  metric = urlencode("bigtableadmin.googleapis.com/backups_write_requests")
  limit = urlencode("/min/project/user")
  override_value = "5"
  force = true
 
}



resource "google_service_usage_consumer_quota_override" "ReadGroup_sec" {
  provider = google-beta
  project = var.project
  service = "bigtabletableadmin.googleapis.com"
  metric = urlencode("ReadGroup")
  limit = urlencode("/100s/project/user")
  override_value = "50"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "WriteGroup_sec" {
  provider = google-beta
  project = var.project
  service = "bigtabletableadmin.googleapis.com"
  metric = urlencode("WriteGroup")
  limit = urlencode("/100s/project/user")
  override_value = "50"
  force = true
 
}
