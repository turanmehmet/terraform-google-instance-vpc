resource "google_compute_firewall" "allow-http" {
	name = var.vm_config["firewall_name"]
	network = "default"
	allow {
		protocol = "tcp"
		ports = [
            "80",
            "22"
        ]
	}
	source_tags = [var.vm_config["network_tags"]]
}