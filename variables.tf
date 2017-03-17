variable "cidr"	{
	type = "string"
	description = "CIDR range of the VPC"
	default = "192.168.0.0/16"
}

variable "name"	{
	type = "string"
	default = "base"
}

variable "dev_stage_prod" {
	description = "Creates route53 base zones for dev, staging, and production."
	default = false
}

variable "base_domain" {
	description = "The base domain of the VPC."
	default = "default.zone"
}

variable "cost_center" {
	type		= "string" 
	description = "An optional tag for company cost allocation"
	default		= "Default"
}
