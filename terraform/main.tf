# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Define the provider and connection details
#provider "iosxe" {
#  address  = "https://"
#  username = "<your_username>"
#  password = "<your_password>"
#  insecure = true    # Set to true if using self-signed certificates or testing
#}

# Define the VLAN resource
#resource "iosxe_vlan" "vlan_example" {
#  vlan_id   = 100                   # Set your VLAN ID here
#  name      = "Test_VLAN"            # Set your VLAN name
#  state     = "active"               # Set the VLAN state (active/suspend)
#}

# Configure the mikrotik Provider
provider "mikrotik" {
  host           = "hostname-of-server:8728"     # Or set MIKROTIK_HOST environment variable
  username       = "<username>"                  # Or set MIKROTIK_USER environment variable
  password       = "<password>"                  # Or set MIKROTIK_PASSWORD environment variable
  tls            = true                          # Or set MIKROTIK_TLS environment variable
  ca_certificate = "/path/to/ca/certificate.pem" # Or set MIKROTIK_CA_CERTIFICATE environment variable
  insecure       = true                          # Or set MIKROTIK_INSECURE environment variable
}

resource "mikrotik_bridge" "bridge" {
  name           = "default_bridge"
  fast_forward   = true
  vlan_filtering = false
  comment        = "Default bridge"
}