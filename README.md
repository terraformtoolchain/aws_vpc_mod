# VPC Base Terraform Module

An atomic Terraform module that sets up a base AWS VPC.

## Design Philosophy

This tiny VPC module makes no assumptions about what the final subnet configuration will be. This decoupling allows subnets to be managed by separate state files. 

## Module Input Variables

- `name` - The VPC's name.
- `cidr` - The VPC's cidr block.
- `dns_enabled` - Boolean value that enables DNS in the VPC. Should be true if you want to use Route53. (default = true)
- `cost_center` - Cost center allocated to resource. (optional)

## Module Outputs

- `id` - VPC ID.
- `cidr_block` - The VPC's cidr block.
