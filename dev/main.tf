module "kubernetes" {
  source = "./kubernetes"

  kvv2_path = vault_mount.kv-v2.path
  vault_server = var.vault_server
}

#module "users" {
#  source = "./users"
#}
