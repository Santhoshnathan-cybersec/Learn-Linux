#!/bin/bash

################################################################################
# NetworkingBasics.sh - Linux Networking Fundamentals
#
# This script explains basic networking concepts and tools in Linux.
# Networking is crucial for connecting to the internet, accessing remote servers,
# and troubleshooting connectivity issues. Linux provides many networking tools
# to configure networks, diagnose problems, and transfer data.
#
# Key concepts covered:
# - Network interfaces and IP addresses
# - Viewing network configuration (ip, ifconfig)
# - DNS and name resolution
# - Testing connectivity (ping, traceroute)
# - Viewing network connections (netstat, ss)
# - Network utilities (curl, wget, ssh, scp)
################################################################################

echo "=== Linux Networking Fundamentals ==="
echo

# Network interfaces
echo "1. Network Interfaces"
echo "   Physical or virtual network connection points"
echo "   Common interface names:"
echo "   eth0, eth1 - Ethernet interfaces"
echo "   wlan0, wlan1 - Wireless interfaces"
echo "   lo - Loopback interface (127.0.0.1)"
echo "   docker0, veth* - Virtual interfaces"
echo

# View network configuration
echo "2. View Network Configuration"
echo "   Modern way (ip command):"
echo "   $ ip addr show  (Show all interfaces and IPs)"
ip addr show 2>/dev/null | head -10
echo
echo "   $ ip addr show eth0  (Show specific interface)"
echo "   $ ip -s link show  (Show interface statistics)"
echo
echo "   Older way (ifconfig):"
echo "   $ ifconfig  (Show network interfaces)"
echo "   $ ifconfig eth0  (Show specific interface)"
echo

# IP addresses
echo "3. IP Addresses and Configuration"
echo "   IPv4: 192.168.1.100  (32 bits)"
echo "   IPv6: 2001:0db8:85a3::8a2e:0370:7334  (128 bits)"
echo
echo "   Special addresses:"
echo "   127.0.0.1 - Loopback/localhost"
echo "   0.0.0.0 - Default route"
echo "   255.255.255.255 - Broadcast"
echo
echo "   Setting IP address (requires root/sudo):"
echo "   $ sudo ip addr add 192.168.1.50/24 dev eth0"
echo "   $ sudo ip addr del 192.168.1.50/24 dev eth0"
echo
echo "   Using old method:"
echo "   $ sudo ifconfig eth0 192.168.1.50"
echo "   $ sudo ifconfig eth0 192.168.1.50 netmask 255.255.255.0"
echo

# DNS and name resolution
echo "4. DNS - Domain Name System"
echo "   Translates domain names to IP addresses"
echo "   View DNS servers:"
echo "   $ cat /etc/resolv.conf"
echo "   $ systemd-resolve --status  (If using systemd)"
echo
echo "   Resolve domain name:"
echo "   $ nslookup google.com"
echo "   $ dig google.com"
echo "   $ host google.com"
echo "   $ getent hosts google.com"
echo

# Testing connectivity
echo "5. ping - Test Connectivity"
echo "   $ ping google.com"
echo "   $ ping -c 5 google.com  (Send 5 packets)"
echo "   $ ping -W 2 192.168.1.1  (2 second timeout)"
echo "   Sends ICMP packets to test if host is reachable"
echo "   Shows round-trip time (RTT) and packet loss"
echo

# Traceroute
echo "6. traceroute - Trace Route to Host"
echo "   $ traceroute google.com"
echo "   $ mtr google.com  (Continuous traceroute)"
echo "   Shows all routers/hops between your computer and destination"
echo "   Helps diagnose where connection problems occur"
echo

# netstat and ss
echo "7. netstat - Network Statistics"
echo "   $ netstat -tlnp  (Show listening TCP ports)"
echo "   -t = TCP, -u = UDP, -l = listening, -n = numeric, -p = program"
echo
echo "   $ netstat -an  (Show all connections)"
echo "   $ netstat -i  (Show interface statistics)"
echo "   $ netstat -r  (Show routing table)"
echo
echo "   Modern alternative (ss):"
echo "   $ ss -tlnp  (Show listening TCP ports)"
echo "   $ ss -an  (Show all connections)"
echo

# Port and service scanning
echo "8. Checking Open Ports"
echo "   Check if port is open:"
echo "   $ telnet localhost 22  (Check SSH)"
echo "   $ nc -zv localhost 22  (netcat - check port)"
echo
echo "   View listening services:"
echo "   $ sudo ss -tlnp  (Show services listening on ports)"
echo "   $ sudo netstat -tlnp"
echo

# Network configuration files
echo "9. Network Configuration Files"
echo "   Debian/Ubuntu:"
echo "   /etc/network/interfaces  (Traditional)"
echo "   /etc/netplan/  (Modern netplan)"
echo
echo "   RedHat/CentOS:"
echo "   /etc/sysconfig/network-scripts/ifcfg-eth0"
echo
echo "   All systems:"
echo "   /etc/hostname  (System hostname)"
echo "   /etc/hosts  (Local hostname to IP mapping)"
echo "   /etc/resolv.conf  (DNS servers)"
echo

# Hostname
echo "10. Hostname Management"
echo "    View hostname:"
echo "    $ hostname"
hostname
echo "    $ cat /etc/hostname"
echo
echo "    Change hostname (temporary):"
echo "    $ sudo hostname newhostname"
echo
echo "    Change hostname (permanent):"
echo "    $ sudo hostnamectl set-hostname newhostname"
echo "    or"
echo "    $ sudo nano /etc/hostname"
echo

# Network interfaces up/down
echo "11. Bringing Interfaces Up and Down"
echo "    Using ip command:"
echo "    $ sudo ip link set eth0 up"
echo "    $ sudo ip link set eth0 down"
echo
echo "    Using ifconfig (old method):"
echo "    $ sudo ifconfig eth0 up"
echo "    $ sudo ifconfig eth0 down"
echo

# Downloading files
echo "12. Downloading Files"
echo "    Using wget:"
echo "    $ wget https://example.com/file.txt"
echo "    $ wget -O newname.txt https://example.com/file.txt"
echo
echo "    Using curl:"
echo "    $ curl https://example.com/file.txt"
echo "    $ curl -o filename.txt https://example.com/file.txt"
echo "    $ curl -L https://short.url  (Follow redirects)"
echo

# Remote access
echo "13. SSH - Secure Shell Access"
echo "    Connect to remote server:"
echo "    $ ssh username@hostname"
echo "    $ ssh -p 2222 username@hostname  (Non-standard port)"
echo "    $ ssh -i keyfile username@hostname  (Using key file)"
echo
echo "    Copy files over SSH (scp):"
echo "    $ scp localfile username@host:/path/"
echo "    $ scp username@host:/path/file localpath/"
echo

# Firewall basics
echo "14. Firewall - ufw and firewalld"
echo "    UFW (Ubuntu Firewall):"
echo "    $ sudo ufw status"
echo "    $ sudo ufw enable"
echo "    $ sudo ufw allow 22/tcp  (Allow SSH)"
echo
echo "    Firewalld (RedHat/CentOS):"
echo "    $ sudo firewall-cmd --state"
echo "    $ sudo firewall-cmd --list-all"
echo

# Network troubleshooting
echo "15. Network Troubleshooting Checklist"
echo "    1. Check if interface is up: ip link show"
echo "    2. Check IP configuration: ip addr show"
echo "    3. Check gateway: ip route show"
echo "    4. Test connectivity: ping gateway"
echo "    5. Test DNS: nslookup 8.8.8.8"
echo "    6. Check routing: traceroute destination"
echo "    7. Check listening ports: ss -tlnp"
echo

echo "=== Networking Summary ==="
echo "Key commands to remember:"
echo "- ip addr show: View IP configuration"
echo "- ping: Test connectivity"
echo "- dig/nslookup: DNS queries"
echo "- netstat/ss: Check open ports"
echo "- ssh/scp: Remote access and file transfer"
echo

################################################################################
