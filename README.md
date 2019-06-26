# terraform-opentelekomcloud-cce

Terraform module which creates CCE resources on Open Telekom Cloud.

These types of resources are supported:

* [CCE Cluster](https://www.terraform.io/docs/providers/opentelekomcloud/r/cce_cluster_v3.html)
* [CCE Node](https://www.terraform.io/docs/providers/opentelekomcloud/r/cce_node_v3.html)

This module uses the `terraform-terraform-label` to implement a strict naming convention. For more information see:

- [terraform-terraform-label](https://github.com/cloudposse/terraform-terraform-label)

## Terraform versions

This module supports Terraform 0.12 and newer.

## Usage

```
module "cce" {
  source                 = "tarak/cce/opentelekomcloud"
  availability_zones     = ["eu-de-01", "eu-de-02", "eu-de-03"]
  key_pair               = "test-keypair"
  master_flavor_id       = "cce.s2.small"
  namespace              = "acme"
  nodes_count            = 3
  nodes_data_volume_size = 100
  nodes_flavor_id        = "s2.large.2"
  nodes_root_volume_size = 40
  stage                  = "prod"
  subnet_id              = "c8bf456e-e3d8-440a-826e-17b27d845487"
  vpc_id                 = "d3f0ca34-b3a9-401b-b14b-262e643163e1"
}

```

## Examples

* [Default](https://github.com/tarak/terraform-opentelekomcloud-cce/tree/master/examples/default)

## Authors

* **Tarak Blah** - *Initial work*
* **Thomas Heil** - *Contributor*
