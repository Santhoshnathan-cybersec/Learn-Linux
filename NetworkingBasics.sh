#!/bin/bash
# Linux Networking Basics
# Understanding network configuration and commands

echo "=== Linux Networking Basics ==="

# ifconfig or ip addr - Show network interfaces
echo "Network interfaces:"
ip addr show 2>/dev/null || ifconfig

# Check IP address
echo ""
echo "IP Address:"
hostname -I

# ping - Check connectivity
echo ""
echo "Testing connectivity (ping localhost):"
ping -c 1 localhost

# traceroute - Trace route to host
echo ""
echo "Traceroute command:"
echo "traceroute google.com"

# netstat - Network statistics
echo ""
echo "Network statistics:"
netstat -i 2>/dev/null || ss -i

# curl/wget - Download files
echo ""
echo "curl - Transfer data using URLs"
echo "wget - Download files"

# DNS
echo ""
echo "DNS configuration:"
cat /etc/resolv.conf 2>/dev/null | head -3

# nslookup - DNS lookup
echo ""
echo "DNS lookup example:"
nslookup google.com 2>/dev/null || echo "nslookup: testing DNS"

# SSH - Secure shell
echo ""
echo "SSH key locations:"
echo "~/.ssh/id_rsa - Private key"
echo "~/.ssh/id_rsa.pub - Public key"
