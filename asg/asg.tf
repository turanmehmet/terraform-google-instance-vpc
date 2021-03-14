resource "google_compute_autoscaler" "foobar" {
	zone = var.asg_config["zone"]
	project = var.asg_config["project"]
	name = var.asg_config["autoscaler"]
	target = google_compute_instance_group_manager.foobar.id
	autoscaling_policy {
        max_replicas = var.asg_config["max_replicas"]
        min_replicas = var.asg_config["min_replicas"]
        cooldown_period = var.asg_config["cooldown_period"]
	cpu_utilization {
		target = var.asg_config["target"]
		}
	}
}

resource "google_compute_target_pool" "foobar" {
	region = var.asg_config["region"]
	project = var.asg_config["project"]
	name = var.asg_config["target-pool-name"]
}


resource "google_compute_instance_group_manager" "foobar" {
	zone = var.asg_config["zone"]
	project = var.asg_config["project"]
	name = var.asg_config["instance_group_manager_name"]
	version {
		instance_template = google_compute_instance_template.foobar.id
		name = "primary"
	}
	target_pools = [google_compute_target_pool.foobar.self_link]
		base_instance_name = "foobar"
}




resource "google_compute_instance_template" "foobar" {
	project = var.asg_config["project"]
	name = var.asg_config["instance_template_name"]
	machine_type = var.asg_config["machine_type"]
	can_ip_forward = false
	disk {
		source_image = var.asg_config["source_image"]
	}
	network_interface {
		network = "default"
		access_config {
		}
	}
}