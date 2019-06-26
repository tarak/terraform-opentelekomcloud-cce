provider "opentelekomcloud" {
  access_key  = var.access_key
  auth_url    = var.auth_url
  domain_name = var.domain_name
  secret_key  = var.secret_key
  tenant_name = var.tenant_name
  version     = "~> 1.9"
}

data "opentelekomcloud_vpc_v1" "vpc" {
  name = "test-vpc"
}

data "opentelekomcloud_vpc_subnet_v1" "subnet" {
  vpc_id            = "${data.opentelekomcloud_vpc_v1.vpc.id}"
  availability_zone = "eu-de-01"
}

data "opentelekomcloud_compute_bms_keypairs_v2" "keypair" {
  name = "test-ssh"
}


module "cce" {
  source                 = "../../"
  availability_zones     = ["eu-de-01", "eu-de-02", "eu-de-03"]
  key_pair               = data.opentelekomcloud_compute_bms_keypairs_v2.keypair.name
  master_flavor_id       = "cce.s2.small"
  namespace              = "acme"
  nodes_count            = 3
  nodes_data_volume_size = 100
  nodes_flavor_id        = "s2.large.2"
  nodes_root_volume_size = 40
  stage                  = "prod"
  subnet_id              = data.opentelekomcloud_vpc_subnet_v1.subnet.id
  vpc_id                 = data.opentelekomcloud_vpc_v1.vpc.id
}
