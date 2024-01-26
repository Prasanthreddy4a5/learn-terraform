terraform {
  backend "s3" {
    bucket = "tf-state-prash74"
    key    = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}

variable "test" {
  default = "Hello state file"
}

output "test" {
  value = var.test
}