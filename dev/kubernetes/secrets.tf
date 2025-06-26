resource "vault_kv_secret_v2" "test-secret" {
  mount = var.kvv2_path
  name  = "test-app/sekretos"
  data_json = jsonencode(
    {
      zip = "zap",
      foo = "bar"
    }
  )
}
