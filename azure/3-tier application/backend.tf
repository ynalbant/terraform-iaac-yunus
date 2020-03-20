# These resources are to be created before running "terraform init"
terraform {
  backend "azurerm" {
    resource_group_name       = "dev"
    storage_account_name      = "dev1yunus"
    container_name            = "devcontainer"
    access_key                = "raPOlZa5l+YiGumiaUUuzWeESgP9eMHndZzMLRcXnGvXAQciRjScNed31fItmnWgxzX+kmaKrjIYs7LM7VqV/w=="
    key                       = "dev_terraform.tfstate"
  }
}