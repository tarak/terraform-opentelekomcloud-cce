output "cce_id" {
  description = "The ID of the cluster."
  value       = var.enabled ? concat(opentelekomcloud_cce_cluster_v3.this.*.id, [""])[0] : ""
}

output "cce_internal_network" {
  description = "The internal network address of the cluster."
  value       = var.enabled ? concat(opentelekomcloud_cce_cluster_v3.this.*.internal, [""])[0] : ""
}

output "cce_external_network" {
  description = "The external network address of the cluster."
  value       = var.enabled ? concat(opentelekomcloud_cce_cluster_v3.this.*.external, [""])[0] : ""
}

output "cce_external_otc" {
  description = "The endpoint of the cluster to be accessed through API Gateway."
  value       = var.enabled ? concat(opentelekomcloud_cce_cluster_v3.this.*.external_otc, [""])[0] : ""
}

output "cce_node_private_ips" {
  description = "The private IP's of the CCE nodes."
  value       = var.enabled ? opentelekomcloud_cce_node_v3.this.*.private_ip : [""]
}
