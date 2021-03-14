variable "bucket_config" {
	type = map(any)
	default = {
		project = "ckad-302703"
		bucket_name = "bucket-terraform-farrukh"
		region = "us-central1"
		zone = "us-central1-c"
		bucket_location = "US"
	}
}
