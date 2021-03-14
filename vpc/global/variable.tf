variable "vpc_config" {
	type = map(any)
	default = {
		project = "ckad-302703"
		vpc_name = "vpc"
		region = "us-central1"
		zone = "us-central1-c"
	}
}
