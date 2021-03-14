resource "google_container_cluster" "primary" {
	name = var.gke_config["cluster_name"]
	location = var.gke_config["region"]
	remove_default_node_pool = false
	initial_node_count = 1
	master_auth {
		username = ""
		password = ""
	client_certificate_config {
		issue_client_certificate = false
		}
	}
}