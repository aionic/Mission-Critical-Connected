output "location" {
  value = var.location
}

output "resource_group_name" {
  value = azurerm_resource_group.stamp.name
}

output "key_vault_name" {
  value = azurerm_key_vault.stamp.name
}

output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.stamp.id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.stamp.name
}

output "aks_kubelet_clientid" {
  value = azurerm_kubernetes_cluster.stamp.kubelet_identity.0.client_id
}

# Ingress Controller FQDN (points to private IP address)
output "aks_ingress_fqdn" {
  value = trimsuffix(azurerm_dns_a_record.cluster_subdomain.fqdn, ".") # remove trailing dot from fqdn
}

output "aks_internal_lb_ip_address" {
  value = local.aks_internal_lb_ip_address
}

output "apim_gateway_url" {
  value = azurerm_api_management.stamp.gateway_url
}

output "apim_fqdn" {
  value = replace(azurerm_api_management.stamp.gateway_url, "https://", "")
}

output "public_storage_account_name" {
  value = azurerm_storage_account.public.name
}

# Hostname of the static website storage endpoint
output "public_storage_static_web_host" {
  value = azurerm_storage_account.public.primary_web_host
}

output "app_insights_id" {
  value = data.azurerm_application_insights.stamp.id
}

output "app_insights_name" {
  value = data.azurerm_application_insights.stamp.name
}

output "eventhub_id" {
  value = azurerm_eventhub_namespace.stamp.id
}
