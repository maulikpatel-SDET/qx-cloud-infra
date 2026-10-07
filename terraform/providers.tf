terraform {
  required_providers {
    aws     = { source = "hashicorp/aws", version = "~> 5.0" }
    azurerm = { source = "hashicorp/azurerm", version = "~> 3.0" }
    google  = { source = "hashicorp/google", version = "~> 5.0" }
    vault   = { source = "hashicorp/vault", version = "~> 4.0" }
  }
}

provider "aws" { region = "ap-south-1" }
provider "azurerm" { features {} }
provider "google" {
  project = "qx-test-project"
  region  = "asia-south1"
}
provider "vault" { address = "https://vault.qx.example.com" }
