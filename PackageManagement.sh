#!/bin/bash
# Package Management in Linux
# Installing, updating, and removing software packages

echo "=== Linux Package Management ==="

# Different Linux distributions use different package managers
echo "Common Package Managers:"
echo "apt/apt-get - Debian, Ubuntu"
echo "yum/dnf - Red Hat, CentOS, Fedora"
echo "pacman - Arch Linux"
echo "zypper - openSUSE"

# Check system info
echo ""
echo "Current system:"
uname -s

# apt commands (Ubuntu/Debian)
echo ""
echo "APT Commands:"
echo "apt update - Update package list"
echo "apt upgrade - Upgrade installed packages"
echo "apt install package_name - Install package"
echo "apt remove package_name - Remove package"
echo "apt search keyword - Search packages"

# yum commands (Red Hat/CentOS)
echo ""
echo "YUM Commands:"
echo "yum update - Update system"
echo "yum install package_name - Install package"
echo "yum remove package_name - Remove package"

# Show installed packages sample
echo ""
echo "Some installed packages:"
dpkg -l 2>/dev/null | grep ^ii | head -3 || rpm -qa | head -3
