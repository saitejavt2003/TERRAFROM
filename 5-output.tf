output "vm_instance" {
  value = google_compute_instance.vm_instance.name
}

output "bucket" {
  value = google_storage_bucket.bucket.name
}