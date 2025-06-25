
terraform {
  required_version = "~> 1.12.2"
  backend "local" {
    path = "/root/states/vault.tfstate"
  }
}

provider "vault" {
  address = "${var.vault_server}"
  token = "${var.root_token}"
}

