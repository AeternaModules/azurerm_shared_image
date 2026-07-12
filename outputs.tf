output "shared_images_id" {
  description = "Map of id values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.id }
}
output "shared_images_accelerated_network_support_enabled" {
  description = "Map of accelerated_network_support_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.accelerated_network_support_enabled }
}
output "shared_images_architecture" {
  description = "Map of architecture values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.architecture }
}
output "shared_images_confidential_vm_enabled" {
  description = "Map of confidential_vm_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.confidential_vm_enabled }
}
output "shared_images_confidential_vm_supported" {
  description = "Map of confidential_vm_supported values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.confidential_vm_supported }
}
output "shared_images_description" {
  description = "Map of description values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.description }
}
output "shared_images_disk_controller_type_nvme_enabled" {
  description = "Map of disk_controller_type_nvme_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.disk_controller_type_nvme_enabled }
}
output "shared_images_disk_types_not_allowed" {
  description = "Map of disk_types_not_allowed values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.disk_types_not_allowed }
}
output "shared_images_end_of_life_date" {
  description = "Map of end_of_life_date values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.end_of_life_date }
}
output "shared_images_eula" {
  description = "Map of eula values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.eula }
}
output "shared_images_gallery_name" {
  description = "Map of gallery_name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.gallery_name }
}
output "shared_images_hibernation_enabled" {
  description = "Map of hibernation_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.hibernation_enabled }
}
output "shared_images_hyper_v_generation" {
  description = "Map of hyper_v_generation values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.hyper_v_generation }
}
output "shared_images_identifier" {
  description = "Map of identifier values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.identifier }
}
output "shared_images_location" {
  description = "Map of location values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.location }
}
output "shared_images_max_recommended_memory_in_gb" {
  description = "Map of max_recommended_memory_in_gb values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.max_recommended_memory_in_gb }
}
output "shared_images_max_recommended_vcpu_count" {
  description = "Map of max_recommended_vcpu_count values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.max_recommended_vcpu_count }
}
output "shared_images_min_recommended_memory_in_gb" {
  description = "Map of min_recommended_memory_in_gb values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.min_recommended_memory_in_gb }
}
output "shared_images_min_recommended_vcpu_count" {
  description = "Map of min_recommended_vcpu_count values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.min_recommended_vcpu_count }
}
output "shared_images_name" {
  description = "Map of name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.name }
}
output "shared_images_os_type" {
  description = "Map of os_type values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.os_type }
}
output "shared_images_privacy_statement_uri" {
  description = "Map of privacy_statement_uri values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.privacy_statement_uri }
}
output "shared_images_purchase_plan" {
  description = "Map of purchase_plan values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.purchase_plan }
}
output "shared_images_release_note_uri" {
  description = "Map of release_note_uri values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.release_note_uri }
}
output "shared_images_resource_group_name" {
  description = "Map of resource_group_name values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.resource_group_name }
}
output "shared_images_specialized" {
  description = "Map of specialized values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.specialized }
}
output "shared_images_tags" {
  description = "Map of tags values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.tags }
}
output "shared_images_trusted_launch_enabled" {
  description = "Map of trusted_launch_enabled values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.trusted_launch_enabled }
}
output "shared_images_trusted_launch_supported" {
  description = "Map of trusted_launch_supported values across all shared_images, keyed the same as var.shared_images"
  value       = { for k, v in azurerm_shared_image.shared_images : k => v.trusted_launch_supported }
}

