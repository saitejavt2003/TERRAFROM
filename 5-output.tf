output "vm_instance_name" {
  value = google_compute_instance.vm_instance.name
}

output "sql_database_instance" {
  value = google_sql_database_instance.db_instance.name
}

output "storage_bucket_name" {
  value = google_storage_bucket.bucket.name
}