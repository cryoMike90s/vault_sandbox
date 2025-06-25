resource "vault_auth_backend" "kubernetes" {
  type = "kubernetes"
}

resource "vault_kubernetes_auth_backend_config" "kubernetes" {
  backend                = vault_auth_backend.kubernetes.path
  kubernetes_host        = var.vault_server
}

resource "vault_kubernetes_auth_backend_role" "test-role" {
  backend                          = vault_auth_backend.kubernetes.path
  role_name                        = "test-role"
  bound_service_account_names      = ["vault_test_2"]
  bound_service_account_namespaces = ["test"]
  token_policies = [vault_policy.test_policy.name]
  token_ttl                        = 36000
  audience                         = "vault"
}
