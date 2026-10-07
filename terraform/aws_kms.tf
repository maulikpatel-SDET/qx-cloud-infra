# R3-09 / R3-10  AWS KMS keys referenced by alias from qx-payment-service.

resource "aws_kms_key" "payment_signing" {
  description              = "QX payment signing key (RSA)"
  customer_master_key_spec = "RSA_2048"
  key_usage                = "SIGN_VERIFY"
}

resource "aws_kms_alias" "payment_signing" {
  name          = "alias/qx-payment-signing"
  target_key_id = aws_kms_key.payment_signing.key_id
}

resource "aws_kms_key" "settlement_signing" {
  description              = "QX settlement signing key (ECDSA P-256)"
  customer_master_key_spec = "ECC_NIST_P256"
  key_usage                = "SIGN_VERIFY"
}

resource "aws_kms_alias" "settlement_signing" {
  name          = "alias/qx-settlement-signing"
  target_key_id = aws_kms_key.settlement_signing.key_id
}

# Symmetric data key - AES-256 (quantum-safe control)
resource "aws_kms_key" "card_data" {
  description              = "QX card data envelope key"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  key_usage                = "ENCRYPT_DECRYPT"
  enable_key_rotation      = true
}

resource "aws_kms_alias" "card_data" {
  name          = "alias/qx-card-data"
  target_key_id = aws_kms_key.card_data.key_id
}
