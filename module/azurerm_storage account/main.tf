variable "stgh" {
  
}
resource "azurerm_storage_account" "stgh" {
    for_each = var.stgh
    name = each.value.name
    location =each.value.location
    resource_group_name = each.value.resource_group_name
    account_replication_type = each.value.account_replication_type
    account_tier = each.value.account_tier
}
