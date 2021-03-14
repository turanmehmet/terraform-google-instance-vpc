resource "google_compute_network" "vpc" {
	name = "vpc"
	auto_create_subnetworks = "true"
	routing_mode = "GLOBAL"
}