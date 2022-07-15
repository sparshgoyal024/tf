locals {
  compute_downsize_min_project = [
"regional_v2_public_advertised_prefixes_announce_requests",
"regional_v2_public_advertised_prefixes_create_requests",
"regional_v2_public_advertised_prefixes_delete_requests",
"regional_v2_public_delegated_prefixes_announce_requests",
"regional_v2_public_delegated_prefixes_create_requests",
"regional_v2_public_delegated_prefixes_delete_requests",
"default",
"get_macsec_config_requests",
"get_serial_port_output_requests",
"heavy_weight_read_requests",
"heavy_weight_write_requests",
"instance_list_referrers_requests",
"list_requests",
"network_endpoint_list_requests",
"network_endpoint_write_requests",
"operation_read_requests",
"project_set_common_instance_metadata_requests",
"read_requests",
"license_insert_requests",
"license_verification_requests",
"recommend_locations_requests",
"simulate_maintenance_event_requests",
"global_resource_write_requests"
  ]
 
}

resource "google_service_usage_consumer_quota_override" "compute_2" {
  provider = google-beta
  for_each   = toset(local.compute_downsize_min_project)
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/${each.key}")
  limit = urlencode("/min/project")
  override_value = "0"
  force = true
 
}