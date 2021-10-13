resource "google_storage_bucket" "bucket" {
  name = "test-bucket-random-001122"
}

resource "google_compute_backend_bucket" "cdn_backend_bucket" {
  name        = "cdn-backend-bucket"
  description = "Backend bucket for serving static content through CDN"
  bucket_name = google_storage_bucket.bucket.name
  enable_cdn  = true
}