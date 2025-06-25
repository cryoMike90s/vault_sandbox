resource "vault_policy" "test_policy" {
  name   = "test"
  policy = file("${path.module}/policies/test-policy.hcl")
}


