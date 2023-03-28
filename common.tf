locals {
  name          = length(var.table_name) == 0 ? join("_", [var.project_name, "table"]) : (var.table_name_as_source ? var.table_name : join("-", [var.project_name, var.table_name]))
  rendered_tags = merge(var.tags, module.mandatory_tags["mandatory_tags"])
}