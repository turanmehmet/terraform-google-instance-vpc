resource "google_compute_network" "vpc" {
	name = "vpc"
	auto_create_subnetworks = "false"
	routing_mode = "REGIONAL"
}
