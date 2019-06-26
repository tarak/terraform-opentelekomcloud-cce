variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`) for the label."
}

variable "availability_zones" {
  description = "A list of availability zones in the region."
  type        = list(string)
}

variable "cluster_type" {
  type        = string
  default     = "VirtualMachine"
  description = "Cluster Type, possible values are VirtualMachine and BareMetal."
}

variable "convert_case" {
  type        = bool
  default     = true
  description = "Convert label fields to lower case."
}

variable "container_network_type" {
  type        = string
  default     = "overlay_l2"
  description = "Container network type."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `stage`, `name` and `attributes`."
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources."
}

variable "key_pair" {
  type        = "string"
  description = "The unique name of the keypair to use for connecting to the CCE nodes."
}

variable "master_flavor_id" {
  type        = string
  description = "Cluster specifications."
}

variable "nodes_count" {
  type        = number
  description = "The amount of nodes to be provisioned."
}

variable "nodes_data_volume_size" {
  type        = number
  description = "The size of the node's data volume in GB."
}

variable "nodes_data_volume_type" {
  type        = string
  default     = "SATA"
  description = "The type of the node's data volume disk."
}

variable "nodes_flavor_id" {
  type        = string
  description = "Specifies the node's flavor ID."
}

variable "nodes_root_volume_size" {
  type        = number
  description = "The size of the node's root volume in GB."
}

variable "nodes_root_volume_type" {
  type        = string
  default     = "SATA"
  description = "The type of the node's root volume disk."
}

variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'."
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev'."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet used to create the master node."
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`."
}

variable "vpc_id" {
  type        = string
  description = "The ID of the VPC used to create the master node."
}
