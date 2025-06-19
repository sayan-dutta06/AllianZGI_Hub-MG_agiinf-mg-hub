variable "name" {
  description = "The name of the Virtual Network Gateway"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}



variable "subnet_id" {
  description = "The ID of the GatewaySubnet"
  type        = string
}

variable "sku" {
  description = "The SKU of the Virtual Network Gateway (e.g., 'VpnGw1', 'VpnGw2', 'ErGw1AZ', etc.)"
  type        = string
}

variable "gateway_type" {
  description = "The type of the gateway. Valid options are 'Vpn' or 'ExpressRoute'"
  type        = string
}

variable "vpn_type" {
  description = "The type of the VPN. Valid options are 'RouteBased' or 'PolicyBased'"
  type        = string
  default     = "RouteBased"
}

    
variable "public_ip_address_id" {
  description = "The ID of the public IP address to associate with the VPN gateway."
  type        = string
}

variable "private_ip_address_allocation" {
  description = "The allocation method for the private IP address. Possible values are 'Dynamic' or 'Static'."
  type        = string
  default     = "Dynamic"
}