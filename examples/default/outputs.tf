output "cce_id" {
  description = "The ID of the CCE cluster."
  value       = module.cce.cce_id
}

output "cce_internal_network" {
  description = "The network address of the CCE internal cluster network."
  value       = module.cce.cce_internal_network
}

output "cce_external_network" {
  description = "The network address of the CCE external cluster network."
  value       = module.cce.cce_external_network
}

output "cce_external_otc" {
  description = "The endpoint of the cluster to be accessed through API Gateway."
  value       = module.cce.cce_external_otc
}

output "cce_node_private_ips" {
  description = "The private IP's of the CCE nodes."
  value       = module.cce.cce_node_private_ips
}
