output "shared_images" {
  description = "All shared_image resources"
  value       = azurerm_shared_image.shared_images
}
output "shared_images_accelerated_network_support_enabled" {
  description = "List of accelerated_network_support_enabled values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.accelerated_network_support_enabled]
}
output "shared_images_architecture" {
  description = "List of architecture values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.architecture]
}
output "shared_images_confidential_vm_enabled" {
  description = "List of confidential_vm_enabled values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.confidential_vm_enabled]
}
output "shared_images_confidential_vm_supported" {
  description = "List of confidential_vm_supported values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.confidential_vm_supported]
}
output "shared_images_description" {
  description = "List of description values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.description]
}
output "shared_images_disk_controller_type_nvme_enabled" {
  description = "List of disk_controller_type_nvme_enabled values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.disk_controller_type_nvme_enabled]
}
output "shared_images_disk_types_not_allowed" {
  description = "List of disk_types_not_allowed values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.disk_types_not_allowed]
}
output "shared_images_end_of_life_date" {
  description = "List of end_of_life_date values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.end_of_life_date]
}
output "shared_images_eula" {
  description = "List of eula values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.eula]
}
output "shared_images_gallery_name" {
  description = "List of gallery_name values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.gallery_name]
}
output "shared_images_hibernation_enabled" {
  description = "List of hibernation_enabled values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.hibernation_enabled]
}
output "shared_images_hyper_v_generation" {
  description = "List of hyper_v_generation values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.hyper_v_generation]
}
output "shared_images_identifier" {
  description = "List of identifier values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.identifier]
}
output "shared_images_location" {
  description = "List of location values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.location]
}
output "shared_images_max_recommended_memory_in_gb" {
  description = "List of max_recommended_memory_in_gb values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.max_recommended_memory_in_gb]
}
output "shared_images_max_recommended_vcpu_count" {
  description = "List of max_recommended_vcpu_count values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.max_recommended_vcpu_count]
}
output "shared_images_min_recommended_memory_in_gb" {
  description = "List of min_recommended_memory_in_gb values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.min_recommended_memory_in_gb]
}
output "shared_images_min_recommended_vcpu_count" {
  description = "List of min_recommended_vcpu_count values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.min_recommended_vcpu_count]
}
output "shared_images_name" {
  description = "List of name values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.name]
}
output "shared_images_os_type" {
  description = "List of os_type values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.os_type]
}
output "shared_images_privacy_statement_uri" {
  description = "List of privacy_statement_uri values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.privacy_statement_uri]
}
output "shared_images_purchase_plan" {
  description = "List of purchase_plan values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.purchase_plan]
}
output "shared_images_release_note_uri" {
  description = "List of release_note_uri values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.release_note_uri]
}
output "shared_images_resource_group_name" {
  description = "List of resource_group_name values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.resource_group_name]
}
output "shared_images_specialized" {
  description = "List of specialized values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.specialized]
}
output "shared_images_tags" {
  description = "List of tags values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.tags]
}
output "shared_images_trusted_launch_enabled" {
  description = "List of trusted_launch_enabled values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.trusted_launch_enabled]
}
output "shared_images_trusted_launch_supported" {
  description = "List of trusted_launch_supported values across all shared_images"
  value       = [for k, v in azurerm_shared_image.shared_images : v.trusted_launch_supported]
}

