variable "vector_search_collections" {
  description = <<EOT
Map of vector_search_collections, attributes below
Required:
    - collection_id
    - location
Optional:
    - data_schema
    - deletion_policy
    - description
    - display_name
    - labels
    - project
    - encryption_spec (block):
        - crypto_key_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - vector_schema (block):
        - dense_vector (optional, block):
            - dimensions (optional)
            - vertex_embedding_config (optional, block):
                - model_id (required)
                - task_type (required)
                - text_template (required)
        - field_name (required)
        - sparse_vector (optional, block):
EOT

  type = map(object({
    collection_id   = string
    location        = string
    data_schema     = optional(string)
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    encryption_spec = optional(object({
      crypto_key_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    vector_schema = optional(list(object({
      dense_vector = optional(object({
        dimensions = optional(number)
        vertex_embedding_config = optional(object({
          model_id      = string
          task_type     = string
          text_template = string
        }))
      }))
      field_name = string
      sparse_vector = optional(object({
      }))
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.vector_search_collections : (
        v.data_schema == null || (can(jsondecode(v.data_schema)))
      )
    ])
    error_message = "must be valid JSON"
  }
}

