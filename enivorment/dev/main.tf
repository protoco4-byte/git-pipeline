module "resource_group" {
source = "../../module/azurerm_resource_group"
rfg = var.rfg
}

module "storage_account" {
    source = "../../module/azurerm_storage account"
    depends_on = [module.resource_group]
    stgh = var.stgh

  
}