variable "vpc_config" {
	type = map(any)
	default = {
		project = "ckad-302703"
		vpc_name = "vpc"
		region = "us-central1"
		zone = "us-central1-c"
		subnet1_cidr = "10.0.1.0/24"
		subnet2_cidr = "10.0.2.0/24"
		subnet3_cidr = "10.0.3.0/24"
	}
}