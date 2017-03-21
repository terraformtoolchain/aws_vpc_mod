resource "aws_vpc" "main" {
	cidr_block					= "${ var.cidr }"
	enable_dns_support			= "${ var.dns_enabled }"
	enable_dns_hostnames		= "${ var.dns_enabled }"

	tags {
		Name					= "${ var.name }-vpc"
		Cost_Center				= "${ var.cost_center }"
	}

	lifecycle {
		create_before_destroy	= true
	}
}
