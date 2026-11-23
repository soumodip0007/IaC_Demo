
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "devops_report" {
  filename = "${path.module}/devops-report.txt"

  content = <<-EOT
    My First Infrastructure as Code Project
    Created using Terraform and AI
  EOT

  # content = <<-EOT
  #   My AI-Driven DevOps Project
  #   Infrastructure managed using Terraform
  #   Environment: Development
  #   Status: Active
  # EOT
}
