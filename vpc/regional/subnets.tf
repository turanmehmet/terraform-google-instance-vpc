resource "google_compute_subnetwork" "public_subnet_1" {
	name = "public-subnet1"
	ip_cidr_range = var.vpc_config["subnet1_cidr"]
	network = google_compute_network.vpc.name
}

resource "google_compute_subnetwork" "public_subnet_2" {
	name = "public-subnet2"
	ip_cidr_range = var.vpc_config["subnet2_cidr"]
	network = google_compute_network.vpc.name
}

resource "google_compute_subnetwork" "public_subnet_3" {
	name = "public-subnet3"
	ip_cidr_range = var.vpc_config["subnet3_cidr"]
	network = google_compute_network.vpc.name
}