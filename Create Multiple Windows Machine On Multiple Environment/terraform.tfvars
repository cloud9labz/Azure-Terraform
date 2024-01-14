#Node Count

node_count = 1

#Azure Subcription Details



#Resource Group Details

rg_name     = "C9LABZ-RG-01"
rg_location = "East US"

#Virtual Network Details

vnet_name               = "C9LABZ-VNET"
vnet_address_space      = "10.0.0.0/8"
subnet_name             = "C9LABZ-SUBNET"
subnet_address_prefixes = "10.0.0.0/24"
publicip_name           = "C9LABZ-PUBLICIP"
domain_label_name       = "c9labz"
network_interface_name  = "C9LABZ-VNIC"
ip_config_name          = "C9LABZ-IPCONFIG"

#Azure Windows VM details
windows_vm_name                       = "C9LABZWINVM"
windows_vm_size                       = "Standard_D2_v3"
windows_vm_osdisk_caching             = "ReadWrite"
windows_vm_osdisk_storageaccount_type = "Standard_LRS"
windows_vm_source_image_publisher     = "MicrosoftWindowsServer"
windows_vm_source_image_offer         = "WindowsServer"
windows_vm_source_image_sku           = "2016-Datacenter"
windows_vm_source_image_version       = "latest"