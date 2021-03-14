provider "google" {
	project = var.vm_config["project"]
	region = var.vm_config["region"]
	zone = var.vm_config["zone"]
}