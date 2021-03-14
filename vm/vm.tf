resource "google_compute_instance" "vm_instance" {
	name = var.vm_config["instance_name"]
	machine_type = var.vm_config["machine_type"]
	boot_disk {
		initialize_params {
			image = var.vm_config["image"]
		}
	}
	network_interface {
		network = "default"
		access_config {
		}
	}
	labels = var.labels
	tags = [var.vm_config["network_tags"]]
	metadata_startup_script = file("startup.sh")
	metadata = {
		ssh-keys = "debian:${file("~/.ssh/id_rsa.pub")}coworker:${file("~/.ssh/id_rsa.pub")}"
	}

}