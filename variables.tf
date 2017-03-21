variable "cidr"	{
	type = "string"
	description = "CIDR range of the VPC"
	default = "192.168.0.0/16"
}

variable "name"	{
	type = "string"
	default = "base"
}

variable "dns_enabled"	{
	description = "Enables DNS support in the VPC."
	default = true
}

variable "cost_center" {
	type		= "string" 
	description = "An optional tag for company cost allocation"
	default		= "Default"
}
