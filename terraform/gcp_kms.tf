# R3-12  GCP Cloud KMS ECDSA key used by qx-payment-service.
resource "google_kms_key_ring" "qx" {
  name     = "qx-test-ring"
  location = "asia-south1"
}

resource "google_kms_crypto_key" "refund_signing" {
  name     = "qx-refund-signing"
  key_ring = google_kms_key_ring.qx.id
  purpose  = "ASYMMETRIC_SIGN"

  version_template {
    algorithm = "EC_SIGN_P256_SHA256"
  }
}
