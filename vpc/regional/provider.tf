provider "google" {
	project = var.vpc_config["project"]
	region = var.vpc_config["region"]
	zone = var.vpc_config["zone"]
}
