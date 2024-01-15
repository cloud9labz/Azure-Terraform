#Node Count

variable "node_count" {
  description = "Node Count"
  type        = number
  default = 1
}

#Azure Subcription Details




#Resource Group Details

variable "rg_name" {
  description = "Azure Resource Group Name"
  type        = string
  default = "CLOUDLABZ"
}

variable "rg_location" {
  description = "Azure Resource Group Location"
  type        = string
  default = "centralindia"

}

#Virtual Network Details

variable "vnet_name" {
  description = "Azure Virtual Network Name"
  type        = string
}

variable "vnet_address_space" {
  description = "Azure Virtual Network Address Space"
  type        = string
}

variable "subnet_name" {
  description = "Azure Subnet Name"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "Azure Subnet address prefixes"
  type        = string
}

variable "publicip_name" {
  description = "Azure Public IP Name"
  type        = string
}

variable "domain_label_name" {
  description = "Azure Domain Name Label Name"
  type        = string
}

variable "network_interface_name" {
  description = "Azure Network Interface Name"
  type        = string
}

variable "ip_config_name" {
  description = "Azure Network Interface Name"
  type        = string
}

#Azure Windows VM details
variable "windows_vm_name" {
  description = "Azure Windows VM Name"
  type        = string
}

variable "windows_vm_size" {
  description = "Azure Windows VM size"
  type        = string
}

variable "windows_vm_username" {
  description = "Azure Windows VM Username"
  type        = string
}

variable "windows_vm_password" {
  description = "Azure Windows VM Password"
  type        = string
}

variable "windows_vm_osdisk_caching" {
  description = "Azure Windows VM OS Disk Caching"
  type        = string
}

variable "windows_vm_osdisk_storageaccount_type" {
  description = "Azure Windows VM OS Disk Storage Account Type"
  type        = string
}

variable "windows_vm_source_image_publisher" {
  description = "Azure Windows VM Name"
  type        = string
}

variable "windows_vm_source_image_offer" {
  description = "Azure Windows VM Name"
  type        = string
}

variable "windows_vm_source_image_sku" {
  description = "Azure Windows VM Name"
  type        = string
}

variable "windows_vm_source_image_version" {
  description = "Azure Windows VM Name"
  type        = string
}