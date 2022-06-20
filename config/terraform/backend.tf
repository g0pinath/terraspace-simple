# SUBSCRIPTION_HASH is a short 4-char consistent hash of the longer subscription id.
# This is useful because azure storage account names are not allowed special characters and are limited to 24 chars.
terraform {
  required_version = "~>1.1"
  backend "azurerm" {
    resource_group_name  = "<%= expansion('golang-example') %>"
    storage_account_name = "<%= 'stiacazasse' + expansion(':ENV') + '002' %>"
    container_name       = "tfstate"
    key                  = "<%= expansion(':LOCATION/:ENV/:BUILD_DIR/terraform.tfstate') %>"
  }
}
