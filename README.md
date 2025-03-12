# VM IP Routing with NAT and Forwarding

This project demonstrates how to configure basic IP routing and NAT between two virtual machines using Ubuntu Server. The setup allows one VM (VM2), which only has an internal network interface, to access the internet via another VM (VM1), which acts as a router with NAT enabled.

## 🖧 Network Topology

 Internet
     |
   [NAT]
     |
   VM1 (Ubuntu)
   - eth0: NAT interface
   - eth1: Internal network (192.168.56.1)
     |
   VM2 (Ubuntu)
   - eth0: Internal network (192.168.56.2)

VM1 acts as a gateway/router.
VM2 routes its traffic through VM1 to reach the internet.

## ⚙️ Steps Performed

1. Set up two virtual machines using VirtualBox or any other virtualization tool.
2. Configured network interfaces:
   - VM1 with NAT (for internet) and internal adapter.
   - VM2 with internal adapter only.
3. Enabled IP forwarding on VM1


✅ Outcome

VM2, which has no direct internet connection, successfully accesses the internet via VM1 using routing and NAT.
📂 Files Included

    VM1-config.sh – sample setup script for VM1
    VM2-config.sh – sample setup script for VM2
    README.md – project documentation

💡 Requirements

    VirtualBox or similar
    Ubuntu Server (22.04 or newer)
    Basic knowledge of networking and Linux CLI

🧠 Topics Covered

    Linux IP forwarding
    NAT with iptables
    Persistent firewall configuration
    Virtual networking
