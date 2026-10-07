# R3-13  HashiCorp Vault transit engine key - signing happens inside Vault.
resource "vault_mount" "transit" {
  path = "transit"
  type = "transit"
}

resource "vault_transit_secret_backend_key" "payout_signing" {
  backend = vault_mount.transit.path
  name    = "qx-payout-signing"
  type    = "rsa-2048"
}
