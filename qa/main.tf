terraform {
  cloud {
    organization = "HariPoCDemo"

    workspaces {
      name = "kasia-demo-poc"
    }
  }
}

resource "random_string" "random_qa_1" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "random_string" "random_qa_2" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

resource "random_string" "random_qa_3" {
  length           = 16
  special          = true
  override_special = "/@£$"
}

output "random_string_qa_output_demo_1" {
    value = random_string.random_qa_1.result
}


output "random_string_qa_output_demo_2" {
    value = random_string.random_qa_2.result
}


output "random_string_qa_output_demo_3" {
    value = random_string.random_qa_3.result
}