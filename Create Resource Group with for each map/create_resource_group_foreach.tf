resource "azurerm_resource_group" "myrg2" {
  for_each = {
    "MY-C9LABS1" = "EastUS"
    "MY-C9LABS2" = "EastUS2"
    "MY-C9LABS3" = "WestUS"
  }
  name     = "${each.key}-RG"
  location = each.value

}