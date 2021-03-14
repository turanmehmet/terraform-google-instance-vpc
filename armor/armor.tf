resource "google_compute_security_policy" "policy" {
	name = "my-policy" 
	rule {
		action = "deny(403)"
		priority = "1000"
		match {
			versioned_expr = "SRC_IPS_V1"
			config {
				src_ip_ranges = var.blacklisted_ips
			}
		}
		description = "Deny access to IPs"
	}
	
	rule {
		action = "deny(404)"
		priority = "1001"
		match {
			expr {
				expression = join(" && ", var.blacklisted_countries)
			}
		}
		description = "Blacklisted Countries"
	}
	rule {
		action = "allow"
		priority = "2147483647"
		match {
			versioned_expr = "SRC_IPS_V1"
		config {
			src_ip_ranges = ["*"]
		}
	}
		description = "default rule"
	}
}
