module "instance" {
  source        = "../modules/compute_instance"
  instance_name = "my-vm"
  machine_type  = "e2-medium"
  zone          = var.zone
  image         = "debian-cloud/debian-12"
  tags          = ["web", "dev"]
}

module "bucket1" {
  source   = "../modules/gcs_bucket"
  name     = "aish-bucket-1-${var.project}"
  location = "US"
}

module "bucket2" {
  source   = "../modules/gcs_bucket"
  name     = "aish-bucket-2-${var.project}"
  location = "US"
}
