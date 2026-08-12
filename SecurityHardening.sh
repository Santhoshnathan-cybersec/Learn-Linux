#!/bin/bash
# Linux Security Hardening
# Best practices for securing your Linux system

echo "=== Linux Security Hardening ==="

# User security
echo "User Security:"
echo "1. Disable root login: edit /etc/ssh/sshd_config"
echo "   PermitRootLogin no"
echo "2. Use strong passwords"
echo "3. Use key-based SSH authentication"
echo "4. Limit sudo access"

# Firewall
echo ""
echo "Firewall Configuration:"
echo "UFW (Ubuntu):"
echo "  ufw enable"
echo "  ufw allow 22/tcp"
echo "  ufw allow 80/tcp"
echo "  ufw allow 443/tcp"

# File permissions
echo ""
echo "File Permissions Best Practices:"
echo "755 for directories (rwxr-xr-x)"
echo "644 for files (rw-r--r--)"
echo "600 for sensitive files (-rw-------)"

# Update system
echo ""
echo "Keep system updated:"
echo "apt update && apt upgrade"
echo "Or on other distros: yum update"

# Check services
echo ""
echo "Disable unnecessary services:"
echo "systemctl disable service_name"

# Audit logs
echo ""
echo "Monitor logs:"
echo "tail -f /var/log/auth.log"
echo "tail -f /var/log/syslog"

# SELinux/AppArmor
echo ""
echo "Mandatory Access Control:"
echo "SELinux (RHEL/CentOS)"
echo "AppArmor (Ubuntu/Debian)"

# Fail2ban
echo ""
echo "Intrusion Prevention:"
echo "Fail2ban - Blocks repeated failed login attempts"
echo "apt install fail2ban"

# Security audit
echo ""
echo "Run security audit:"
echo "lynis audit system"
