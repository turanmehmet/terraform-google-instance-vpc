variable "asg_config" {
	type = map(any)
	default = {
		project = "ckad-302703"
		region = "us-central1"
		zone = "us-central1-c"
		target-pool-name = "my-target-pool"
		autoscaler = "my-autoscaler"
		max_replicas = 5
		min_replicas = 1
		cooldown_period = 60
		target = 0.5
		instance_group_manager_name = "my-igm"
		instance_template_name = "my-instance-template"
		machine_type = "e2-medium"
		source_image = "debian-cloud/debian-9"
	}
}

