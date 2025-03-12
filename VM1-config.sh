#!/bin/bash

sudo apt-get update && sudo apt install -y net-tools

cat <<EOF | sudo tee /etc/netplan/50-cloud-init.yaml
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: true
    enp0s8:
      dhcp4: false
      addresses:
        - 10.10.10.1/24
EOF

sudo netplan apply

sudo sed -i 's/^#\s*\(net\.ipv4\.ip_forward=1\)/\1/' /etc/sysctl.conf

sudo install -y iptables-persistent

sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE

sudo iptables-save | sudo tee /etc/iptables/rules.v4 > /dev/null

