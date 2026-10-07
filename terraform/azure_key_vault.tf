# R3-11  Azure Key Vault RSA key used by qx-payment-service.
resource "azurerm_key_vault_key" "invoice_signing" {
  name         = "qx-invoice-signing"
  key_vault_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/qx-test/providers/Microsoft.KeyVault/vaults/qx-test-kv"
  key_type     = "RSA"
  key_size     = 2048
  key_opts     = ["sign", "verify"]
}
