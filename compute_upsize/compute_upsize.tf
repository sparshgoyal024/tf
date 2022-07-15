

resource "google_service_usage_consumer_quota_override" "override" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/subnetworks")
  limit = urlencode("/project")
  override_value = "100"
  force = true
 

}

resource "google_service_usage_consumer_quota_override" "firewalls" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/firewalls")
  limit = urlencode("/project")
  override_value = "30"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "networks" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/networks")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "routes" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/routes")
  limit = urlencode("/project")
  override_value = "50"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "affinity_groups" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/affinity_groups")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "Autoscalers" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/autoscalers")
  limit = urlencode("/project/region")
  override_value = "3"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "backend_buckets" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/backend_buckets")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "backend_services" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/backend_services")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "cpus" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/cpus")
  limit = urlencode("/project/region")
  override_value = "3" 
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "in_use_backup_schedules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/in_use_backup_schedules")
  limit = urlencode("/project/region")
  override_value = "3"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "in_use_snapshot_schedules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/in_use_snapshot_schedules")
  limit = urlencode("/project/region")
  override_value = "3"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "external_network_lb_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/external_network_lb_forwarding_rules")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "external_protocol_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/external_protocol_forwarding_rules")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
 dimensions = {
    region = "us-central1"
  }
}

resource "google_service_usage_consumer_quota_override" "forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/forwarding_rules")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "vm_to_internet_egress_bandwidth" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/vm_to_internet_egress_bandwidth")
  limit = urlencode("/s/project/region")
  override_value = "1000"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "get_macsec_config_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/get_macsec_config_requests")
  limit = urlencode("/min/project")
  override_value = "50"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "global_external_managed_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_external_managed_forwarding_rules")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}






resource "google_service_usage_consumer_quota_override" "global_internal_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_internal_addresses")
  limit = urlencode("/project")
  override_value = "30"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "global_public_delegated_prefixes" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_public_delegated_prefixes")
  limit = urlencode("/project")
  override_value = "10"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "global_resource_write_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_resource_write_requests")
  limit = urlencode("/min/project")
  override_value = "10"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "health_checks" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/health_checks")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "images" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/images")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "regional_in_use_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_in_use_addresses")
  limit = urlencode("/project/region")
  override_value = "100"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "instance_groups" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/instance_groups")
  limit = urlencode("/project/region")
  override_value = "2"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "instance_list_referrers_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/instance_list_referrers_requests")
  limit = urlencode("/min/project")
  override_value = "1000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "instance_templates" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/instance_templates")
  limit = urlencode("/project")
  override_value = "2"
  force = true
 
 
}

resource "google_service_usage_consumer_quota_override" "internal_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/internal_addresses")
  limit = urlencode("/project/region")
  override_value = "10"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "list_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/list_requests")
  limit = urlencode("/min/project")
  override_value = "1000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "local_ssd_total_storage" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/local_ssd_total_storage")
  limit = urlencode("/project/region")
  override_value = "100"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}





resource "google_service_usage_consumer_quota_override" "instance_group_managers" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/instance_group_managers")
  limit = urlencode("/project/region")
  override_value = "2"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "machine_images" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/machine_images")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "global_network_endpoint_groups" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_network_endpoint_groups")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "network_endpoint_groups" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/network_endpoint_groups")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "network_endpoint_list_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/network_endpoint_list_requests")
  limit = urlencode("/min/project")
  override_value = "100"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "network_endpoint_write_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/network_endpoint_write_requests")
  limit = urlencode("/min/project")
  override_value = "10"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "network_firewall_policies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/network_firewall_policies")
  limit = urlencode("/project")
  override_value = "15"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "node_groups" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/node_groups")
  limit = urlencode("/project/region")
  override_value = "2"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "node_templates" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/node_templates")
  limit = urlencode("/project/region")
  override_value = "2"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "operation_read_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/operation_read_requests")
  limit = urlencode("/min/project")
  override_value = "1000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "pd_extreme_total_provisioned_iops" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/pd_extreme_total_provisioned_iops")
  limit = urlencode("/project/region")
  override_value = "2"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}





resource "google_service_usage_consumer_quota_override" "ssd_total_storage" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/ssd_total_storage")
  limit = urlencode("/project/region")
  override_value = "100"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "disks_total_storage" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/disks_total_storage")
  limit = urlencode("/project/region")
  override_value = "120"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "project_set_common_instance_metadata_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/project_set_common_instance_metadata_requests")
  limit = urlencode("/min/project")
  override_value = "20"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "psc_internal_lb_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/psc_internal_lb_forwarding_rules")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "default_1" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/default")
  limit = urlencode("/d/project")
  override_value = "10000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "default" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/default")
  limit = urlencode("/min/project")
  override_value = "100"
  force = true
 
}





resource "google_service_usage_consumer_quota_override" "read_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/read_requests")
  limit = urlencode("/min/project")
  override_value = "1000"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "regional_autoscalers" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_autoscalers")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "external_managed_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/external_managed_forwarding_rules")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "regional_instance_group_managers" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_instance_group_managers")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "regional_network_firewall_policies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_network_firewall_policies")
  limit = urlencode("/project/region")
  override_value = "50"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "regional_target_tcp_proxies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_target_tcp_proxies")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "recommend_locations_requests_1" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/recommend_locations_requests")
  limit = urlencode("/d/project")
  override_value = "20"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "recommend_locations_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/recommend_locations_requests")
  limit = urlencode("/min/project")
  override_value = "10"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "resource_policies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/resource_policies")
  limit = urlencode("/project/region")
  override_value = "100"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "routers" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/routers")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "security_policies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/security_policies")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}








resource "google_service_usage_consumer_quota_override" "security_policy_ceval_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/security_policy_ceval_rules")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "service_attachments" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/service_attachments")
  limit = urlencode("/project/region")
  override_value = "15"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}





resource "google_service_usage_consumer_quota_override" "snapshots" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/snapshots")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "regional_static_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/regional_static_addresses")
  limit = urlencode("/project/region")
  override_value = "5"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "global_static_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_static_addresses")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_http_proxies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_http_proxies")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_https_proxies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_https_proxies")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_instances" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_instances")
  limit = urlencode("/project")
  override_value = "3"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_pools" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_pools")
  limit = urlencode("/project")
  override_value = "3"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_ssl_proxies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_ssl_proxies")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "target_tcp_proxies" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/target_tcp_proxies")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "internal_traffic_director_forwarding_rules" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/internal_traffic_director_forwarding_rules")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}

resource "google_service_usage_consumer_quota_override" "url_maps" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/url_maps")
  limit = urlencode("/project")
  override_value = "5"
  force = true
 
}


resource "google_service_usage_consumer_quota_override" "instances" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/instances")
  limit = urlencode("/project/region")
  override_value = "3"
  force = true
  dimensions = {
    region = "us-central1"
  }
 
}

resource "google_service_usage_consumer_quota_override" "global_in_use_addresses" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/global_in_use_addresses")
  limit = urlencode("/project")
  override_value = "30"
  force = true
 
}


resource "google_service_usage_consumer_quota_override" "heavy_weight_read_requests" {
  provider = google-beta
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/heavy_weight_read_requests")
  limit = urlencode("/min/project")
  override_value = "500"
  force = true
 
}
