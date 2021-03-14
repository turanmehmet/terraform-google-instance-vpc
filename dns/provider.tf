provider "google" {
	project = var.config["project"]
}

resource "google_dns_record_set" "this" {
	name = "${var.config["dns_record"]}.${google_dns_managed_zone.this.dns_name}"
	type = var.config["type"]
	ttl = var.config["ttl"]
	managed_zone = google_dns_managed_zone.this.name
	rrdatas = [var.config["rrdatas"]]
}

resource "google_dns_managed_zone" "this" {
	name = var.config["dns_record"]
	dns_name = var.config["dns_name"]
}

output "urls" {
	value = google_dns_record_set.this.name
}