#Azure Resource Group
resource "azurerm_resource_group" "my-resource-Group-name" {
  name     = var.rg_name
  location = var.rg_location
}

#Azure Windows Virtual Machine
resource "azurerm_windows_virtual_machine" "my-windows-vm-name" {
  count                 = var.node_count
  name                  = "${var.windows_vm_name}${count.index}"
  location              = azurerm_resource_group.my-resource-Group-name.location
  resource_group_name   = azurerm_resource_group.my-resource-Group-name.name
  size                  = var.windows_vm_size
  admin_username        = var.windows_vm_username
  admin_password        = var.windows_vm_password
  network_interface_ids = [element(azurerm_network_interface.my-virtual-network-interface[*].id, count.index)]

  os_disk {
    caching              = var.windows_vm_osdisk_caching
    storage_account_type = var.windows_vm_osdisk_storageaccount_type
  }

  source_image_reference {

    publisher = var.windows_vm_source_image_publisher
    offer     = var.windows_vm_source_image_offer
    sku       = var.windows_vm_source_image_sku
    version   = var.windows_vm_source_image_version
  }
}