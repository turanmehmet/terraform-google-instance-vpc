
resource "google_container_node_pool" "primary_preemptible_nodes" {
	name = var.gke_config["node_pool_name"]
	location = var.gke_config["region"]
	cluster = google_container_cluster.primary.name
	node_count = var.gke_config["node_count"]
	node_config {
		preemptible = var.gke_config["preemptible"]
		machine_type = var.gke_config["machine_type"]
	metadata = {
		disable-legacy-endpoints = "true"
	}
	oauth_scopes = [
	"https://www.googleapis.com/auth/cloud-platform"
		]
	}
}