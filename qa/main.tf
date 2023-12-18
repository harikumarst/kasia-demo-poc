terraform {
  cloud {
    organization = "HariPoCDemo"

    workspaces {
      name = "kasia-demo-poc"
    }
  }
}

resource "random_string" "random_qa" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "random_string_qa_output_demo" {
    value = random_string.random_qa.result
}