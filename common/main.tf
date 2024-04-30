variable "common_length" {
  default = 40
  type = number
  description = "Length of a secret"
}

resource "random_password" "common_password" {
  length           = var.common_length
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

output "common_password" {
  value = random_password.common_password.result
  sensitive = true
}