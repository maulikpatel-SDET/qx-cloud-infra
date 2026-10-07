# R3-14  AWS Secrets Manager secret that stores a PEM private key (value set outside Terraform).
resource "aws_secretsmanager_secret" "webhook_signing_key" {
  name        = "qx/payment/webhook-signing-key"
  description = "PEM-encoded ECDSA P-256 private key for webhook signatures"
}
