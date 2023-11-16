output "resource_name" {
  value = try(azurecaf_name.twelve["length"].result, azurecaf_name.six["length"].result)
}