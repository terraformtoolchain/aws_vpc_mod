# VPC Base Terraform Module

A Terraform module that sets up a base AWS VPC with single or multi Route53 internal zones.

## Design Philosophy

This tiny VPC module makes no assumptions about what the final subnet configuration will be. This decoupling allows subnets to be managed by separate state files. 

## External Modules
*[aws_route53_zone]

[aws_route53_zone]: https://github.com/terraformtoolchain/aws_route53_zone

## Enable Multi-Zones
Zone configuration is managed by a nested module that handles Route53. Please see the route53 module's [README] 

[README]: https://github.com/terraformtoolchain/aws_route53_zone/README.md


## Module Input Variables

- `name` - The VPC's name.
- `cidr` - The VPC's cidr block.
- `base_domain` - Root private hosted zone name for vpc. Ex. example.com
- `cost_center` - Cost center allocated to resource. (optional)

## Module Outputs

- `id` - VPC ID.
- `cidr_block` - The VPC's cidr block.
- `zone_id` - Route53 base domain zone ID.
- `zone_ids` - Route53 multi domain zone IDs if `multizone` is enabled in route53 module.
