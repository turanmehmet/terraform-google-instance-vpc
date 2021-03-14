variable "config" {
	type = map(any)
	default = {
		project = "ckad-302703"
	}
}
variable blacklisted_ips {
	type = list 
	default = [
		"9.9.9.0/24",
		"9.9.1.0/24"
	]
}
variable blacklisted_countries {
	type = list 
	default = [ 
		"origin.region_code == 'CN'", 
		"origin.region_code == 'UA'",
		"origin.region_code == 'RU'",
	]
}