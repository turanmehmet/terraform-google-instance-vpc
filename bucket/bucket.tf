provider "google" {
	project = var.bucket_config["project"]
	region = var.bucket_config["region"]
	zone = var.bucket_config["zone"]
}

resource "google_storage_bucket" "bucket" {
	name = var.bucket_config["bucket_name"]
	location = var.bucket_config["bucket_location"]
	force_destroy = true
}
