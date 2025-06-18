terraform {
  backend "gcs" {
    bucket = "terraform-state-dev"
    prefix = "terraform/state/dev"
  }
}
