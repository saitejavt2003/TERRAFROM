resource "google_project_service" "compute_engine" {
  service = "compute.googleapis.com"  # Required for Compute Engine (VMs)
   disable_on_destroy = false
}

resource "google_project_service" "cloud_sql" {
  service = "sqladmin.googleapis.com"  # Required for Cloud SQL (MySQL)
   disable_on_destroy = false
}

resource "google_project_service" "storage" {
  service = "storage.googleapis.com"  # Required for Cloud Storage (Buckets)
   disable_on_destroy = false
}

resource "google_project_service" "cloud_functions" {
  service = "cloudfunctions.googleapis.com"  # Required for Cloud Functions
   disable_on_destroy = false
}