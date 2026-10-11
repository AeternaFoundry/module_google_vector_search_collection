resource "google_vector_search_collection" "vector_search_collections" {
  for_each = var.vector_search_collections

  collection_id   = each.value.collection_id
  location        = each.value.location
  data_schema     = each.value.data_schema
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  labels          = each.value.labels
  project         = each.value.project

  dynamic "encryption_spec" {
    for_each = each.value.encryption_spec != null ? [each.value.encryption_spec] : []
    content {
      crypto_key_name = encryption_spec.value.crypto_key_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "vector_schema" {
    for_each = each.value.vector_schema != null ? each.value.vector_schema : []
    content {
      dynamic "dense_vector" {
        for_each = vector_schema.value.dense_vector != null ? [vector_schema.value.dense_vector] : []
        content {
          dimensions = dense_vector.value.dimensions
          dynamic "vertex_embedding_config" {
            for_each = dense_vector.value.vertex_embedding_config != null ? [dense_vector.value.vertex_embedding_config] : []
            content {
              model_id      = vertex_embedding_config.value.model_id
              task_type     = vertex_embedding_config.value.task_type
              text_template = vertex_embedding_config.value.text_template
            }
          }
        }
      }
      field_name = vector_schema.value.field_name
      dynamic "sparse_vector" {
        for_each = vector_schema.value.sparse_vector != null ? [vector_schema.value.sparse_vector] : []
        content {
        }
      }
    }
  }
}

