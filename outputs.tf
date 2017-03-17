output "id" {
	value = "${ aws_vpc.main.id }"
}

output "cidr_block" {
	value = "${ aws_vpc.main.cidr_block }"
}

output "zone_id" {
	value = "${ module.main_zone.zone_id}"
}

output "zone_ids" {
	value = "${ module.main_zone.zone_ids}"
}
