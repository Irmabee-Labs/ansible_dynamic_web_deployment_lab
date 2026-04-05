# Terraform: Build a VM called "web" on OpenStack and output its IPv4 address.

terraform {
  required_providers {
    openstack = {
      source = "terraform-provider-openstack/openstack"
    }
  }
}

# Uses OpenStack credentials from ~/.config/openstack/clouds.yaml
provider "openstack" {
  cloud = "openstack"
}

# Create one VM named "web"
resource "openstack_compute_instance_v2" "web" {
  name            = "web"
  image_name      = "Ubuntu-24.04-LTS (Noble Numbat)"
  flavor_name     = "aem.1c2r.50g"

  # This keypair must exist in OpenStack and match the private key you use from the master
  key_pair        = "master_irma"

  # IMPORTANT:
  # This security group must allow:
  # - inbound TCP/22 for SSH (Ansible)
  # - inbound TCP/80 for nginx reachability from master / OsloMet browser
  security_groups = ["default"]

  network {
    name = "oslomet"
  }
}

# Output the fixed IPv4 address on the attached network.
# This is what Ansible will read after terraform apply.
output "instance_ip_address" {
  value = openstack_compute_instance_v2.web.access_ip_v4
}
