locals {
  bt_quotas = ["read_regional","run_job_regional","write_regional"]
   projects     = ["whizlabs-billing"]

my_product = {for val in setproduct(local.projects,local.bt_quotas):
                "${val[0]}-${val[1]}" => val}  
}


resource "google_service_usage_consumer_quota_override" "run_instance" {
  provider = google-beta
  for_each = local.my_product
project = "whizlabs-billing"
  service = "run.googleapis.com"
  metric = urlencode("run.googleapis.com/instance_limit_regional")
  limit = urlencode("/project/region")
  override_value = "0"
  force = true
}


resource "google_service_usage_consumer_quota_override" "run_job" {
  provider = google-beta
  for_each = local.my_product
project = "whizlabs-billing"
  service = "run.googleapis.com"
  metric = urlencode("run.googleapis.com/${each.value[1]}")
  limit = urlencode("/min/project/region")
  override_value = "0"
  force = true
}