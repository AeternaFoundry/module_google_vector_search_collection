output "vector_search_collections_id" {
  description = "Map of id values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no id are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vector_search_collections_collection_id" {
  description = "Map of collection_id values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no collection_id are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.collection_id if v.collection_id != null && length(v.collection_id) > 0 }
}
output "vector_search_collections_create_time" {
  description = "Map of create_time values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no create_time are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "vector_search_collections_data_schema" {
  description = "Map of data_schema values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no data_schema are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.data_schema if v.data_schema != null && length(v.data_schema) > 0 }
}
output "vector_search_collections_deletion_policy" {
  description = "Map of deletion_policy values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no deletion_policy are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "vector_search_collections_description" {
  description = "Map of description values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no description are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.description if v.description != null && length(v.description) > 0 }
}
output "vector_search_collections_display_name" {
  description = "Map of display_name values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no display_name are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "vector_search_collections_effective_labels" {
  description = "Map of effective_labels values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no effective_labels are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "vector_search_collections_encryption_spec" {
  description = "Map of encryption_spec values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no encryption_spec are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => one(v.encryption_spec) if v.encryption_spec != null && length(v.encryption_spec) > 0 }
}
output "vector_search_collections_labels" {
  description = "Map of labels values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no labels are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "vector_search_collections_location" {
  description = "Map of location values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no location are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.location if v.location != null && length(v.location) > 0 }
}
output "vector_search_collections_name" {
  description = "Map of name values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no name are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.name if v.name != null && length(v.name) > 0 }
}
output "vector_search_collections_project" {
  description = "Map of project values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no project are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.project if v.project != null && length(v.project) > 0 }
}
output "vector_search_collections_terraform_labels" {
  description = "Map of terraform_labels values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no terraform_labels are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "vector_search_collections_update_time" {
  description = "Map of update_time values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no update_time are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}
output "vector_search_collections_vector_schema" {
  description = "Map of vector_schema values across all vector_search_collections, keyed the same as var.vector_search_collections except keys with no vector_schema are omitted"
  value       = { for k, v in google_vector_search_collection.vector_search_collections : k => v.vector_schema if v.vector_schema != null && length(v.vector_schema) > 0 }
}

