module "dns" {
	source = "git::https://github.com/terraformtoolchain/aws_route53_zone.git?ref=v0.1.3"

	vpc_id  = "${ aws_vpc.main.id }"
}

