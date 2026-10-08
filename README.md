# qx-cloud-infra  (Repo 5 of 5)

Cloud key management for the QX test system. All names, ids and ARNs are FAKE test values.

| File | Key | Used by (qx-payment-service) | Test |
|---|---|---|---|
| terraform/aws_kms.tf | AWS KMS RSA_2048 sign key, ECC_NIST_P256 sign key, symmetric AES key | app/cloud/aws_kms_sign.py, aws_kms_envelope.py
| terraform/azure_key_vault.tf | Azure Key Vault RSA 2048 key | app/cloud/azure_kv_sign.py
| terraform/gcp_kms.tf | GCP KMS EC_SIGN_P256_SHA256 key | app/cloud/gcp_kms_sign.py 
| terraform/vault_transit.tf | HashiCorp Vault transit rsa-2048 key | app/cloud/vault_transit_sign.py
| terraform/secrets_manager.tf | AWS Secrets Manager secret holding a PEM key | app/cloud/secrets_manager_key.py
