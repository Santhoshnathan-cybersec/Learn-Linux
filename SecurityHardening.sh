#!/bin/bash

################################################################################
# SecurityHardening.sh - Basic Security Hardening for Linux Systems
#
# This script explains basic security hardening practices for Linux systems.
# Security hardening involves reducing the attack surface and implementing
# defensive measures to protect systems from unauthorized access and attacks.
# This is fundamental knowledge for any Linux user or administrator.
#
# Key concepts covered:
# - User account security
# - File system security
# - Network security and firewalls
# - SSH security
# - Password policies
# - System monitoring and logging
# - Software updates
# - SELinux and AppArmor basics
################################################################################

echo "=== Linux Security Hardening Basics ==="
echo

# Security layers
echo "1. Defense in Depth - Security Layers"
echo "   Multiple layers of security:"
echo "   1. Physical security (server location)"
echo "   2. Network security (firewalls, IDS/IPS)"
echo "   3. OS security (permissions, SELinux)"
echo "   4. Application security (secure coding)"
echo "   5. Data security (encryption)"
echo "   No single solution is perfect - use multiple layers"
echo

# User account security
echo "2. User Account Security"
echo "   Disable unnecessary accounts:"
echo "   $ sudo usermod -L username  (Lock account)"
echo "   $ sudo userdel -r username  (Remove account)"
echo
echo "   Remove default accounts:"
echo "   Disable: test, guest, oracle, mysql (if not needed)"
echo "   $ sudo usermod -L testuser"
echo
echo "   Disable root login:"
echo "   Edit: /etc/ssh/sshd_config"
echo "   Set: PermitRootLogin no"
echo "   $ sudo systemctl restart ssh"
echo
echo "   Use sudo instead of root:"
echo "   $ sudo command  (Run as root, logged)"
echo "   $ sudo -l  (List sudo permissions)"
echo

# Password security
echo "3. Password Policies and Management"
echo "   Force strong passwords:"
echo "   Install PAM:"
echo "   $ sudo apt install libpam-cracklib"
echo
echo "   Set password expiration:"
echo "   $ sudo chage -l username  (View password aging)"
echo "   $ sudo chage -M 90 username  (Max 90 days)"
echo "   $ sudo chage -m 1 username  (Min 1 day before change)"
echo
echo "   File: /etc/login.defs"
echo "   PASS_MAX_DAYS  90"
echo "   PASS_MIN_LEN   12"
echo "   PASS_WARN_AGE  14"
echo

# File and directory permissions
echo "4. File and Directory Permissions"
echo "   Remove world-readable/writable permissions:"
echo "   $ sudo chmod 755 /etc"
echo "   $ sudo chmod 644 /etc/passwd"
echo "   $ sudo chmod 640 /etc/shadow"
echo
echo "   Check for world-writable files:"
echo "   $ sudo find / -perm -002 -type f  (Find world-writable)"
echo "   $ sudo find / -perm -222 -type f  (All can write)"
echo
echo "   Check for SUID/SGID files:"
echo "   $ sudo find / -perm -4000  (SUID)"
echo "   $ sudo find / -perm -2000  (SGID)"
echo "   Review for unintended elevation"
echo

# Network security - firewall
echo "5. Firewall Configuration"
echo "   UFW - Uncomplicated Firewall (Ubuntu):"
echo "   $ sudo ufw status"
echo "   $ sudo ufw enable  (Enable firewall)"
echo "   $ sudo ufw default deny  (Deny all, allow exceptions)"
echo "   $ sudo ufw allow 22/tcp  (Allow SSH)"
echo "   $ sudo ufw allow 80/tcp  (Allow HTTP)"
echo "   $ sudo ufw allow 443/tcp  (Allow HTTPS)"
echo "   $ sudo ufw delete allow 8080/tcp  (Remove rule)"
echo
echo "   Firewalld (RedHat/CentOS):"
echo "   $ sudo firewall-cmd --permanent --add-service=http"
echo "   $ sudo firewall-cmd --permanent --add-port=8080/tcp"
echo "   $ sudo firewall-cmd --reload"
echo

# SSH security
echo "6. SSH Security Hardening"
echo "   Disable password authentication:"
echo "   Edit: /etc/ssh/sshd_config"
echo "   PasswordAuthentication no"
echo "   PubkeyAuthentication yes"
echo "   $ sudo systemctl restart ssh"
echo
echo "   Change SSH port (optional, not real security):"
echo "   Port 2222  (in sshd_config)"
echo
echo "   Disable root login:"
echo "   PermitRootLogin no"
echo
echo "   Disable X11 forwarding if unused:"
echo "   X11Forwarding no"
echo
echo "   Limit login attempts:"
echo "   MaxAuthTries 3"
echo "   MaxSessions 5"
echo

# System updates and patching
echo "7. System Updates and Patching"
echo "   Keep system updated:"
echo "   $ sudo apt update && sudo apt upgrade  (Debian/Ubuntu)"
echo "   $ sudo yum update  (RedHat/CentOS)"
echo
echo "   Check for security updates:"
echo "   $ sudo apt list --upgradable"
echo "   $ unattended-upgrade  (Automatic updates)"
echo
echo "   Important packages to update:"
echo "   - Kernel (most critical)"
echo "   - OpenSSL/TLS libraries"
echo "   - Database servers"
echo "   - Web servers"
echo

# Disable unnecessary services
echo "8. Disable Unnecessary Services"
echo "   List running services:"
echo "   $ sudo systemctl list-units --type=service --state=running"
echo
echo "   Disable unneeded services:"
echo "   $ sudo systemctl disable bluetooth"
echo "   $ sudo systemctl disable cups  (Printing)"
echo "   $ sudo systemctl disable avahi-daemon"
echo
echo "   Services to typically disable:"
echo "   - Bluetooth (if not needed)"
echo "   - NFS (if not needed)"
echo "   - SNMP (unless monitored)"
echo "   - X11 (if headless server)"
echo

# Logging and monitoring
echo "9. Logging and Monitoring"
echo "   View system logs:"
echo "   $ sudo tail -f /var/log/auth.log  (Authentication)"
echo "   $ sudo tail -f /var/log/syslog  (System log)"
echo "   $ journalctl -u sshd  (SSH log)"
echo
echo "   Check failed logins:"
echo "   $ sudo grep 'Failed password' /var/log/auth.log | wc -l"
echo "   $ sudo lastb  (Failed login attempts)"
echo "   $ sudo last  (Successful logins)"
echo
echo "   Monitor running processes:"
echo "   $ top"
echo "   $ ps aux | grep -v root  (Non-root processes)"
echo

# File integrity monitoring
echo "10. File Integrity Monitoring"
echo "    Detect unauthorized changes:"
echo "    $ sudo apt install aide  (Install AIDE)"
echo "    $ sudo aideinit  (Initialize AIDE database)"
echo "    $ sudo aide --check  (Check for changes)"
echo
echo "    Alternative: Tripwire"
echo "    $ sudo apt install tripwire"
echo "    Helps detect system compromise"
echo

# SELinux and AppArmor
echo "11. SELinux and AppArmor (Mandatory Access Control)"
echo "    SELinux (RedHat/CentOS/Fedora):"
echo "    $ getenforce  (Check SELinux status)"
echo "    Provides fine-grained access control"
echo
echo "    AppArmor (Ubuntu/Debian):"
echo "    $ sudo systemctl status apparmor"
echo "    $ sudo aa-status  (View AppArmor status)"
echo "    Profile-based access control"
echo
echo "    Purpose: Control what processes can access"
echo "    Complements traditional file permissions"
echo

# System audit
echo "12. System Auditing with auditd"
echo "    Comprehensive system auditing:"
echo "    $ sudo apt install auditd"
echo "    $ sudo systemctl start auditd"
echo
echo "    Add audit rules:"
echo "    $ sudo auditctl -w /etc/passwd -p wa  (Monitor /etc/passwd)"
echo "    $ sudo auditctl -a always,exit -F arch=b64 -S execve"
echo
echo "    View audit logs:"
echo "    $ sudo ausearch -m type -ts recent"
echo "    $ sudo aureport  (Generate audit report)"
echo

# Network scanning and vulnerabilities
echo "13. Scanning for Vulnerabilities"
echo "    Check open ports:"
echo "    $ sudo ss -tlnp  (Show listening ports)"
echo "    $ sudo netstat -tlnp"
echo
echo "    Network scanning:"
echo "    $ sudo nmap -sV localhost  (Service version scan)"
echo "    $ sudo nmap -p- localhost  (All ports)"
echo
echo "    Check for weak SSH keys:"
echo "    $ sudo ssh-keyscan -t rsa localhost"
echo

# Encryption
echo "14. Data Encryption"
echo "    Full disk encryption (during install):"
echo "    Choose 'Encrypt the new Ubuntu installation'"
echo
echo "    File encryption:"
echo "    $ gpg -c filename  (Encrypt with GPG)"
echo "    $ gpg filename.gpg  (Decrypt)"
echo
echo "    Home directory encryption:"
echo "    $ sudo apt install ecryptfs-utils"
echo
echo "    Encrypted backup:"
echo "    $ tar -czf - /data | gpg -c | dd of=/backup/backup.tar.gz.gpg"
echo

# Security checklist
echo "15. Linux Security Hardening Checklist"
echo "    [ ] Remove default/unused accounts"
echo "    [ ] Enforce strong password policies"
echo "    [ ] Configure firewall (enable and configure)"
echo "    [ ] Disable password SSH auth (use keys only)"
echo "    [ ] Disable root login via SSH"
echo "    [ ] Keep system updated"
echo "    [ ] Disable unnecessary services"
echo "    [ ] Monitor logs regularly"
echo "    [ ] Set proper file permissions"
echo "    [ ] Use sudo for privilege elevation"
echo "    [ ] Configure SELinux/AppArmor"
echo "    [ ] Regular backups (tested)"
echo "    [ ] File integrity monitoring"
echo "    [ ] Enable system auditing"
echo "    [ ] Regular security scans"
echo

echo "=== Security Hardening Summary ==="
echo "Key principles:"
echo "- Defense in depth (multiple layers)"
echo "- Least privilege (minimal permissions)"
echo "- Fail securely (secure by default)"
echo "- Keep systems updated"
echo "- Monitor and log everything"
echo "- Regular security audits"
echo "- Test and verify controls"
echo
echo "Remember:"
echo "Security is ongoing, not one-time"
echo "Stay informed of new threats"
echo "Follow vendor security advisories"
echo

################################################################################
