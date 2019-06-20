module "vpc_label" {
  source     = "git::https://github.com/cloudposse/terraform-terraform-label.git?ref=master"
  attributes = var.attributes
  delimiter  = var.delimiter
  enabled    = var.enabled
  name       = "k8s"
  namespace  = var.namespace
  stage      = var.stage
  tags       = var.tags
}


resource "opentelekomcloud_cce_cluster_v3" "this" {
  count                  = var.enabled ? 1 : 0
  name                   = "${module.cce_label.id}-master"
  cluster_type           = var.cluster_type
  flavor_id              = var.master_flavor_id
  vpc_id                 = var.vpc_id
  subnet_id              = var.subnet_id
  container_network_type = var.container_network_type
}

resource "opentelekomcloud_cce_node_v3" "this" {
  count             = var.enabled ? var.nodes_count : 0
  name              = join(var.delimiter, [module.subnet_label.id, element(concat(var.availability_zones, [""]), count.index), count.index])
  cluster_id        = opentelekomcloud_cce_cluster_v3.this.id
  flavor_id         = var.nodes_flavor_id
  availability_zone = element(concat(var.availability_zones, [""]), count.index)
  key_pair          = var.key_pair

  root_volume {
    size       = var.nodes_root_volume_size
    volumetype = var.nodes_root_volume_type
  }

  data_volumes {
    size       = var.nodes_data_volume_size
    volumetype = var.nodes_data_volume_type
  }
}