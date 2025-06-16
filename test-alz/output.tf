output "resource_groups" {
  value = { for k, v in module.resource_groups : k => v.name }
}

output "vnets" {
  value = { for k, v in module.vnet : k => v.name }
}

output "subnets" {
  value = { for k, v in module.subnets : k => v.subnet_names }
}