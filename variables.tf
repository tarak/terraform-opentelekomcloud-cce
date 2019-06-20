variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "availability_zones" {
  description = "A list of availability zones in the region"
  type        = list(string)
}

variable "cluster_type" {
  type    = "string"
  default = "VirtualMachine"
}

variable "convert_case" {
  type        = bool
  default     = true
  description = "Convert fields to lower case"
}

variable "container_network_type" {
  type    = "string"
  default = "overlay_l2"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "master_flavor_id" {
  type = "string"
}

variable "nodes_count" {
  type = "number"
}

variable "nodes_data_volume_size" {
  type = "number"
}

variable "nodes_data_volume_type" {
  type    = "string"
  default = "SATA"
}

variable "nodes_flavor_id" {
  type = "string"
}

variable "nodes_root_volume_size" {
  type = "number"
}

variable "nodes_root_volume_type" {
  type    = "string"
  default = "SATA"
}

variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev'"
}

variable "subnet_id" {
  type = "string"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "vpc_id" {
  type = "string"
}
