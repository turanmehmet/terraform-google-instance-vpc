provider "google" {
	project = var.asg_config["project"]
	region = var.asg_config["region"]
	zone = var.asg_config["zone"]
}
