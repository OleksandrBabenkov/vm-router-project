#!/bin/bash

cat <<EOF | sudo tee /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: false
      addresses:
        - 10.10.10.2/24
EOF

sudo netplan apply

