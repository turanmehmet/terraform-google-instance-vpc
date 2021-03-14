provider "google" {
	project = var.gke_config["project"]
	region = var.gke_config["region"]
	zone = var.gke_config["zone"]
}
