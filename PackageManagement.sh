#!/bin/bash

################################################################################
# PackageManagement.sh - Linux Package Management
#
# This script explains software package management in Linux.
# Package management is how you install, update, and remove software on Linux.
# Different Linux distributions use different package managers, but the concepts
# are similar. This script covers the most common package managers.
#
# Key concepts covered:
# - Package managers and repositories
# - apt (Debian/Ubuntu) - Advanced Package Tool
# - yum/dnf (RedHat/CentOS/Fedora)
# - dpkg and rpm (lower-level tools)
# - Installing, updating, and removing packages
################################################################################

echo "=== Linux Package Management ==="
echo

# What is a package?
echo "1. What is a Package?"
echo "   A package is a compressed file containing:"
echo "   - Program files/binaries"
echo "   - Configuration files"
echo "   - Documentation"
echo "   - Dependencies information"
echo "   Packages make software installation easy and standardized"
echo

# Package managers overview
echo "2. Common Package Managers by Distribution"
echo "   Debian/Ubuntu:     apt (Advanced Package Tool)"
echo "   RedHat/CentOS/Fedora: yum or dnf"
echo "   Arch Linux:        pacman"
echo "   openSUSE:          zypper"
echo "   Generic:           snap, flatpak (work on most distros)"
echo

# APT - Debian/Ubuntu
echo "3. APT - Advanced Package Tool (Debian/Ubuntu)"
echo "   Update package list:"
echo "   $ sudo apt update"
echo "   Shows available updates without installing"
echo
echo "   Install a package:"
echo "   $ sudo apt install packagename"
echo "   $ sudo apt install package1 package2 package3"
echo
echo "   Remove a package:"
echo "   $ sudo apt remove packagename"
echo "   $ sudo apt autoremove  (Remove unused dependencies)"
echo
echo "   Update installed packages:"
echo "   $ sudo apt upgrade  (Update packages)"
echo "   $ sudo apt full-upgrade  (Update including removing old packages)"
echo
echo "   Search for packages:"
echo "   $ apt search keyword"
echo "   $ apt-cache search keyword"
echo

# Querying packages with APT
echo "4. Querying Packages (APT)"
echo "   List installed packages:"
echo "   $ apt list --installed"
echo "   $ dpkg -l"
echo
echo "   Get package information:"
echo "   $ apt show packagename"
echo "   $ apt-cache show packagename"
echo
echo "   Check if package is installed:"
echo "   $ dpkg -l | grep packagename"
echo "   $ apt list --installed | grep packagename"
echo

# DPKG - Debian Package Manager
echo "5. dpkg - Debian Package Manager (Lower-level)"
echo "   Install package from file:"
echo "   $ sudo dpkg -i package.deb"
echo
echo "   Remove package:"
echo "   $ sudo dpkg -r packagename"
echo
echo "   List installed packages:"
echo "   $ dpkg -l"
echo "   $ dpkg -l | grep keyword"
echo
echo "   Show package information:"
echo "   $ dpkg -s packagename"
echo
echo "   List files in package:"
echo "   $ dpkg -L packagename"
echo

# YUM - RedHat/CentOS
echo "6. YUM - Yellowdog Updater Modified (RedHat/CentOS)"
echo "   Update package list:"
echo "   $ sudo yum check-update"
echo
echo "   Install a package:"
echo "   $ sudo yum install packagename"
echo
echo "   Remove a package:"
echo "   $ sudo yum remove packagename"
echo
echo "   Update all packages:"
echo "   $ sudo yum update"
echo
echo "   Search for packages:"
echo "   $ yum search keyword"
echo

# DNF - Fedora
echo "7. DNF - Dandified YUM (Fedora/newer CentOS/RedHat)"
echo "   Similar to yum but faster and more efficient"
echo "   Install package:"
echo "   $ sudo dnf install packagename"
echo "   Remove package:"
echo "   $ sudo dnf remove packagename"
echo "   Update all packages:"
echo "   $ sudo dnf upgrade"
echo

# RPM - RedHat Package Manager
echo "8. rpm - RedHat Package Manager (Lower-level)"
echo "   Install package:"
echo "   $ sudo rpm -i package.rpm"
echo "   $ sudo rpm -ivh package.rpm  (Verbose with progress)"
echo
echo "   Remove package:"
echo "   $ sudo rpm -e packagename"
echo
echo "   Query packages:"
echo "   $ rpm -q packagename  (Check if installed)"
echo "   $ rpm -qa  (List all installed packages)"
echo "   $ rpm -ql packagename  (List files in package)"
echo

# Repositories
echo "9. Software Repositories"
echo "   Repositories are servers that host packages"
echo "   APT repositories:"
echo "   $ cat /etc/apt/sources.list  (View enabled repositories)"
echo "   $ sudo add-apt-repository ppa:username/repository"
echo "   $ sudo add-apt-repository 'deb [URL] distribution component'"
echo
echo "   YUM/DNF repositories:"
echo "   $ sudo yum-config-manager --add-repo [URL]"
echo

# Dependency management
echo "10. Dependency Management"
echo "    Packages often depend on other packages"
echo "    Package managers automatically install dependencies"
echo "    APT:"
echo "    $ sudo apt install package-name  (Installs dependencies too)"
echo
echo "    YUM/DNF:"
echo "    $ sudo yum install package-name  (Installs dependencies too)"
echo

# Finding package information
echo "11. Finding Packages and Getting Info"
echo "    Find which package provides a command:"
echo "    APT: $ apt-file search command-name"
echo "    YUM: $ yum provides command-name"
echo
echo "    Get package details:"
echo "    $ apt show packagename  (APT)"
echo "    $ yum info packagename  (YUM)"
echo

# System-wide updates
echo "12. System-Wide Updates"
echo "    Update all packages to latest versions:"
echo "    APT:"
echo "    $ sudo apt update && sudo apt upgrade"
echo
echo "    YUM/DNF:"
echo "    $ sudo yum update"
echo "    $ sudo dnf upgrade"
echo

# Snap and Flatpak
echo "13. Snap and Flatpak (Universal Package Managers)"
echo "    Work across different Linux distributions"
echo "    Snap:"
echo "    $ snap search keyword"
echo "    $ snap install packagename"
echo "    $ snap remove packagename"
echo
echo "    Flatpak:"
echo "    $ flatpak install flathub app-name"
echo "    $ flatpak uninstall app-name"
echo

# Version management
echo "14. Version Management"
echo "    Check version of installed package:"
echo "    APT: $ apt show packagename | grep Version"
echo "    YUM: $ yum info packagename | grep Version"
echo "    Command: $ packagename --version"
echo

# Cleaning up
echo "15. Cleaning Up"
echo "    Remove cached packages:"
echo "    APT: $ sudo apt clean  (Remove cache)"
echo "         $ sudo apt autoclean  (Remove partial packages)"
echo
echo "    YUM/DNF:"
echo "    $ sudo yum clean all"
echo "    $ sudo dnf clean all"
echo

echo "=== Package Management Summary ==="
echo "Key points:"
echo "- Use apt for Debian/Ubuntu systems"
echo "- Use yum/dnf for RedHat/CentOS/Fedora systems"
echo "- Update repository lists before installing"
echo "- Package managers handle dependencies automatically"
echo "- Use sudo/root privileges for installation/removal"
echo

################################################################################
