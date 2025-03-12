variable "project_id" {
  description = "Google Cloud Project ID"
  type        = string
  default     = "wise-scene-453411-c9"
}

variable "region" {
  description = "Region for resources"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone for Compute Engine"
  type        = string
  default     = "us-central1-a"
}

variable "bucket_name" {
  description = "Cloud Storage Bucket Name"
  type        = string
  default     = "my-gcp-bucket-1234"
}
