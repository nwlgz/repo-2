terraform {
  required_providers {
    aws = "~> 4.58"
  }
}

# as network
provider "aws" {
  region = "eu-west-1"
  default_tags {
    tags = {
      deployed-by = "platform"
      zeta-observability = "infra"
    }
  }
  # assume_role {
  #   role_arn = "arn:aws:iam::${var.network_account_id}:role/platform/terraform-execution-role"
  # }
}

# provider "aws" {
#   alias  = "inManagementAccount"
#   region = "eu-west-1"
#   default_tags {
#     tags = {
#       deployed-by = "platform"
#       zeta-observability = "infra"
#     }
#   }
#   assume_role {
#     role_arn = "arn:aws:iam::${var.management_account_id}:role/platform/terraform-execution-role"
#   }
# }

# provider "aws" {
#   alias  = "inCicdAccount"
#   region = "eu-west-1"
#   default_tags {
#     tags = {
#       deployed-by = "platform"
#     }
#   }
#   assume_role {
#     role_arn = "arn:aws:iam::${var.cicd_account_id}:role/platform/terraform-execution-role"
#   }
# }