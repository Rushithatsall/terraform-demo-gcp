/*## the bucketname is prefixed with the GCP project name which is unique
resource "google_storage_bucket" "auto-expire" {
  name          = "ringed-inn-430209-i8-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}