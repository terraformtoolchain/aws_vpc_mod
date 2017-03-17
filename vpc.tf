resource "aws_vpc" "main" {
	cidr_block					= "${ var.cidr }"
	enable_dns_support			= true
	enable_dns_hostnames		= true

	tags {
		Name					= "${ var.name }-vpc"
		Cost_Center				= "${ var.cost_center }"
		Created					= "${ timestamp() }"
	}

	lifecycle {
		create_before_destroy	= true
	}
}

module "main_zone" {
	source = "/home/atlas/workspace/terraform/modules/route53_zone"

	vpc_id	= "${ aws_vpc.main.id }"
}
