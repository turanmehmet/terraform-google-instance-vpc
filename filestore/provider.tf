provider "google" {
	project = var.fs_config["project"]
	region = var.fs_config["region"]
	zone = var.fs_config["zone"]
}
