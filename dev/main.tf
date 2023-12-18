terraform {
  cloud {
    organization = "HariPoCDemo"

    workspaces {
      name = "kasia-demo-poc"
    }
  }
}

resource "random_string" "random_dev" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "random_string" {
    value = random_string.random_dev.result
}