##Azure Dev AKS Environment Terraform Variables##
infra_config = {
  resource_groups = {
    "az-rg-aks-micro-dev01" = {
      location = "central india"
      tags     = { Environment = "Dev", ManagedBy = "Terraform" }
    }
  }
  container_registries = {
    "azacrmicro01" = {
      rg_key = "az-rg-aks-micro-dev01"
      sku    = "Basic"
    }
  }
  kubernetes_clusters = {
    "az-aks-micro-dev01" = {
      rg_key     = "az-rg-aks-micro-dev01"
      dns_prefix = "aksmicrodev"
      default_node_pool = {
        name       = "default"
        node_count = 1
        vm_size    = "Standard_D4ds_v5"
      }
    }
  }
}
