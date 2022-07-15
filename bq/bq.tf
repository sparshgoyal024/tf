resource "google_service_usage_consumer_quota_override" "override_query_usage" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/query/usage")
  limit          = urlencode("/d/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "override_query_usage_user" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/query/usage")
  limit          = urlencode("/d/project/user")
  override_value = "1000"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "override_streaming_region" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/streaming/insert_bytes")
  limit          = urlencode("/min/project/region")
  override_value = "1000000000"
  dimensions = {
    "region" = "us-central1"
  }
  force = true
}

resource "google_service_usage_consumer_quota_override" "override_streaming_region_zero" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/streaming/insert_bytes")
  limit          = urlencode("/min/project/region")
  override_value = "0"

  force = true
}

resource "google_service_usage_consumer_quota_override" "extract" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/extract/bytes")
  limit          = urlencode("/d/project")
  override_value = "1000000000"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "table" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/tabledata/list_bytes")
  limit          = urlencode("/min/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "unlimited" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/unlimited_requests")
  limit          = urlencode("/d/project")
  override_value = "1000"
  force          = true

}

resource "google_service_usage_consumer_quota_override" "iam_per_min" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/iam_policy_requests")
  limit          = urlencode("/min/project")
  override_value = "100"
  force          = true

}

resource "google_service_usage_consumer_quota_override" "iam_per_min_per_user" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/iam_policy_requests")
  limit          = urlencode("/min/project/user")
  override_value = "100"
  force          = true

}

resource "google_service_usage_consumer_quota_override" "omni_query_bytes" {
  provider = google-beta
  service  = "bigquery.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/query/omni_query_bytes")
  limit          = urlencode("/d/project")
  override_value = "1000000000"
  force          = true

}

resource "google_service_usage_consumer_quota_override" "override_streaming_eu" {
  provider = google-beta
  service        = "bigquery.googleapis.com"
  project        = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/streaming/insert_bytes_eu")
  limit          = urlencode("/min/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "override_streaming_us" {
  provider = google-beta
  service        = "bigquery.googleapis.com"
  project        = var.project
  metric         = urlencode("bigquery.googleapis.com/quota/streaming/insert_bytes_us")
  limit          = urlencode("/min/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "cloud_sql_federated_query_cross_region_bytes" {
  provider = google-beta
  project        = var.project
  service        = "bigquery.googleapis.com"
  metric         = urlencode("bigquery.googleapis.com/quota/query/cloud_sql_federated_query_cross_region_bytes")
  limit          = urlencode("/d/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "cross_cloud_transfer_bytes" {
  provider = google-beta
  project        = var.project
  service        = "bigquery.googleapis.com"
  metric         = urlencode("bigquery.googleapis.com/quota/query/cross_cloud_transfer_bytes")
  limit          = urlencode("/d/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "usage" {
  provider = google-beta
  project        = var.project
  service        = "bigquery.googleapis.com"
  metric         = urlencode("bigquery.googleapis.com/quota/query/usage")
  limit          = urlencode("/d/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "append_bytes_eu" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/append_bytes_eu")
  limit          = urlencode("/min/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "append_bytes_region" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/append_bytes_region")
  limit          = urlencode("/min/project/region")
  dimensions = {
    "region" = "us-central1"
  }
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "append_bytes_region_null" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/append_bytes_region")
  limit          = urlencode("/min/project/region")
  
  override_value = "0"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "append_bytes" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/append_bytes")
  limit          = urlencode("/min/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "batch_commit_write_streams_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/batch_commit_write_streams_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "max_active_streams_eu" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/max_active_streams_eu")
  limit          = urlencode("/project")
  override_value = "1000"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "max_active_streams_region" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/max_active_streams_region")
  limit          = urlencode("/project/region")
  override_value = "100"
  dimensions = {
    "region" = "us-central1"
  }
  force          = true
}

resource "google_service_usage_consumer_quota_override" "max_active_streams_region_null" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/max_active_streams_region")
  limit          = urlencode("/project/region")
  override_value = "0"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "max_active_streams" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/max_active_streams")
  limit          = urlencode("/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "create_stream_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/create_stream_requests")
  limit          = urlencode("/min/project")
  override_value = "50"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "finalize_write_stream_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/finalize_write_stream_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "flush_rows_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/flush_rows_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "get_write_stream_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/get_write_stream_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "pending_stream_bytes" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/write/pending_stream_bytes")
  limit          = urlencode("/project")
  override_value = "1000000000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "control_plane_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/control_plane_requests")
  limit          = urlencode("/min/project/user")
  override_value = "0"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "data_plane_requests" {
  provider = google-beta
  service  = "bigquerystorage.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerystorage.googleapis.com/data_plane_requests")
  limit          = urlencode("/min/project/user")
  override_value = "0"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "edwmigration_service_get_requests" {
  provider = google-beta
  service  = "bigquerymigration.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerymigration.googleapis.com/edwmigration_service_get_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}

resource "google_service_usage_consumer_quota_override" "edwmigration_service_list_requests" {
  provider = google-beta
  service  = "bigquerymigration.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerymigration.googleapis.com/edwmigration_service_list_requests")
  limit          = urlencode("/min/project")
  override_value = "1000"
  force          = true
}


resource "google_service_usage_consumer_quota_override" "edwmigration_service_other_requests" {
  provider = google-beta
  service  = "bigquerymigration.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerymigration.googleapis.com/edwmigration_service_other_requests")
  limit          = urlencode("/min/project/user")
  override_value = "20"
  force = true
}

resource "google_service_usage_consumer_quota_override" "sql_translation_translate_requests" {
  provider = google-beta
  service  = "bigquerymigration.googleapis.com"
  project  = var.project
  metric         = urlencode("bigquerymigration.googleapis.com/sql_translation_translate_requests")
  limit          = urlencode("/min/project/user")
  override_value = "100"
  force = true
}


