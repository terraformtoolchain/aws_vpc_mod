# VPC Base Terraform Module

A Terraform module that sets up a base AWS VPC with single or multi Route53 internal zone.

## Design Philosophy

This tiny VPC module makes no assumptions about what the final subnet configuration will be. This decoupling allows subnets to be managed by separate state files. 


## Module Input Variables

- `name` - The VPC's name
- `cidr` - The VPC's cidr block
- `dns_enabled` - Allows private DNS in the vpc (default=true)
- `dns_zone_name` - Root private hosted zone name for vpc
- `cost_center` - Cost center allocated to resource (optional)

## Module Outputs

- `id` - VPC ID
- `cidr_block` - The VPC's cidr block
- `dns_zone_id` -
