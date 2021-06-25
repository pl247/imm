terraform {
    required_version = "~> 0.13"
    required_providers {
        intersight = {
            source = "CiscoDevNet/intersight"
            version = "1.0.8"
        }
    }
}

provider "intersight" {
    apikey = var.api_key
    secretkey = var.secretkey
    endpoint = var.endpoint
}

data "intersight_organization_organization" "default" {
    name = "default"
}
# print default org moid
output "org_default_moid" {
    value = data.intersight_organization_organization.default.moid
}

module "intersight_policy_bundle" {
  source = "terraform-cisco-modules/policy-bundle/intersight"

  # external sources
  organization    = data.intersight_organization_organization.default.id
  vnic_mac_pool   = var.mac_pool_moid
  imc_access_pool = var.ip_pool_moid

  # every policy created will have this prefix in its name
  policy_prefix = "bdc"
  description   = "Created by Terraform"

  # Fabric Interconnect 6454 config specifics
  server_ports_6454 = [17, 18, 19, 20]
  port_channel_6454 = [49, 50]
  uplink_vlans_6454 = {
    "vlan1020" : 1020,
    "vlan1021" : 1021
  }

  fc_port_count_6454 = 4

  imc_access_vlan    = 1020
  imc_admin_password = "Cisco123"

  ntp_servers = ["ca.pool.ntp.org"]

  dns_preferred = "172.22.16.254"
  dns_alternate = "172.22.16.253"

  ntp_timezone = "America/Winnipeg"

    tags = [
    { "key" : "location", "value" : "Backup-DC" },
    { "key" : "orchestrator", "value" : "terraform" }
  ]
}
