locals {
  compute_downsize_project = [
"backend_buckets",
"backend_services",
"cpus_all_regions",
"target_http_proxies",
"target_https_proxies",
"target_instances",
"target_pools",
"target_ssl_proxies",
"target_tcp_proxies",
"target_vpn_gateways",
"url_maps",
"external_vpn_gateways",
"firewalls",
"forwarding_rules",
"global_external_managed_forwarding_rules",
"global_in_use_addresses",
"global_internal_addresses",
"global_network_endpoint_groups",
"global_public_delegated_prefixes",
"global_static_addresses",
"global_static_byoip_addresses",
"gpus_all_regions",
"health_checks",
"images",
"instance_templates",
"interconnect_total_gbps",
"interconnects",
"internal_traffic_director_forwarding_rules",
"machine_images",
"network_firewall_policies",

"packet_mirrorings",
"public_advertised_prefixes",
"routers",
"routes",
"security_policies",
"security_policy_ceval_rules",
"security_policy_rules",
"snapshots",
"ssl_certificates",

"vpn_gateways",
"vpn_tunnels",
"xpn_service_projects"
  ]
   
}



resource "google_service_usage_consumer_quota_override" "compute_3" {
  provider = google-beta
  for_each   = toset(local.compute_downsize_project)
  project = var.project
  service = "compute.googleapis.com"
  metric = urlencode("compute.googleapis.com/${each.key}")
  limit = urlencode("/project")
  override_value = "0"
  force = true
 
}