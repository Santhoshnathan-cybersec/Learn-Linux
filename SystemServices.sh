#!/bin/bash

################################################################################
# SystemServices.sh - Managing System Services and Daemons
#
# This script explains how to manage system services and daemons in Linux.
# Services are background processes that run continuously and provide
# system functionality. Understanding service management is essential
# for system administration, troubleshooting, and automation.
#
# Key concepts covered:
# - What are daemons and services
# - systemd (modern service manager)
# - systemctl commands
# - Service status and logs
# - Enabling/disabling services
# - Creating custom services
# - Understanding service dependencies
################################################################################

echo "=== Linux System Services and Daemons Management ==="
echo

# What are services?
echo "1. What are Services and Daemons?"
echo "   Daemon: A process running in background, usually started at boot"
echo "   Service: A daemon managed by the init system"
echo "   Examples:"
echo "   - Web server (Apache, Nginx)"
echo "   - Database (MySQL, PostgreSQL)"
echo "   - SSH server"
echo "   - DNS server (systemd-resolved)"
echo "   - System logging (systemd-journald)"
echo "   Services are critical for system functionality"
echo

# systemd overview
echo "2. systemd - Modern Service Manager"
echo "   Modern Linux distributions use systemd"
echo "   Replaces older SysVinit system"
echo "   Systemd provides:"
echo "   - Service management (start, stop, restart)"
echo "   - Process management"
echo "   - Dependency management"
echo "   - Automatic service restart"
echo "   - Logging and journaling"
echo "   - Timer functionality"
echo

# Check if systemd is used
echo "3. Checking Init System"
echo "   Check which init system is running:"
echo "   $ ps 1"
echo "   $ cat /proc/1/comm"
echo "   Output 'systemd' means systemd is used"
echo
echo "   On newer systems (Ubuntu 16.04+, CentOS 7+): systemd"
echo "   On older systems: SysVinit, Upstart"
echo

# systemctl - checking status
echo "4. systemctl - Check Service Status"
echo "   Check if service is running:"
echo "   $ systemctl status servicename"
echo "   $ systemctl status nginx"
echo "   $ systemctl status ssh"
echo
echo "   Status output shows:"
echo "   - Running/Stopped status"
echo "   - PID (process ID)"
echo "   - Memory/CPU usage"
echo "   - Recent logs"
echo

# Start, stop, restart
echo "5. systemctl - Start, Stop, Restart Services"
echo "   Start a service:"
echo "   $ sudo systemctl start servicename"
echo "   $ sudo systemctl start apache2"
echo
echo "   Stop a service:"
echo "   $ sudo systemctl stop servicename"
echo "   $ sudo systemctl stop nginx"
echo
echo "   Restart a service:"
echo "   $ sudo systemctl restart servicename"
echo "   $ sudo systemctl restart mysql"
echo
echo "   Reload service (reread config without stopping):"
echo "   $ sudo systemctl reload servicename"
echo "   $ sudo systemctl reload apache2"
echo

# Enable and disable services
echo "6. systemctl - Enable/Disable Services at Boot"
echo "   Enable service (start at boot):"
echo "   $ sudo systemctl enable servicename"
echo "   $ sudo systemctl enable ssh"
echo
echo "   Disable service (don't start at boot):"
echo "   $ sudo systemctl disable servicename"
echo "   $ sudo systemctl disable bluetooth"
echo
echo "   Check if service is enabled:"
echo "   $ systemctl is-enabled servicename"
echo

# List services
echo "7. systemctl - List Services"
echo "   List all services:"
echo "   $ systemctl list-units --all --type=service"
echo "   $ systemctl list-units --type=service"
echo
echo "   List active services:"
echo "   $ systemctl list-units --type=service --state=running"
echo
echo "   List enabled services:"
echo "   $ systemctl list-unit-files --type=service"
echo
echo "   List failed services:"
echo "   $ systemctl list-units --type=service --failed"
echo

# Checking service dependencies
echo "8. Service Dependencies"
echo "   View service requirements:"
echo "   $ systemctl show servicename"
echo "   $ systemctl show -p Requires servicename"
echo "   $ systemctl show -p Wants servicename"
echo
echo "   View what depends on a service:"
echo "   $ systemctl list-dependencies servicename"
echo

# Viewing service files
echo "9. Service Unit Files"
echo "   Service definitions stored in:"
echo "   /etc/systemd/system/  (Custom services)"
echo "   /usr/lib/systemd/system/  (Package services)"
echo "   /run/systemd/system/  (Runtime services)"
echo
echo "   View service file:"
echo "   $ systemctl cat servicename"
echo "   $ cat /etc/systemd/system/servicename.service"
echo
echo "   Edit service file:"
echo "   $ sudo systemctl edit servicename"
echo "   $ sudo nano /etc/systemd/system/servicename.service"
echo

# Service logs
echo "10. Viewing Service Logs"
echo "    View service logs (journalctl):"
echo "    $ journalctl -u servicename"
echo "    $ journalctl -u nginx  (Show nginx logs)"
echo "    $ journalctl -u ssh  (Show SSH logs)"
echo
echo "    Follow logs in real-time:"
echo "    $ journalctl -u servicename -f"
echo
echo "    Show last N lines:"
echo "    $ journalctl -u servicename -n 50"
echo
echo "    Show logs since time:"
echo "    $ journalctl -u servicename --since='2 hours ago'"
echo
echo "    Show error logs only:"
echo "    $ journalctl -u servicename -p err"
echo

# Socket units
echo "11. Socket and Timer Units"
echo "    Socket units - activation on port access"
echo "    $ systemctl list-units --type=socket"
echo
echo "    Timer units - scheduled tasks (cron replacement)"
echo "    $ systemctl list-units --type=timer"
echo "    $ systemctl status systemd-tmpfiles-clean.timer"
echo

# Creating custom service
echo "12. Creating Custom Service"
echo "    Service file: /etc/systemd/system/myservice.service"
echo "    Example content:"
echo "    [Unit]"
echo "    Description=My Custom Service"
echo "    After=network.target"
echo
echo "    [Service]"
echo "    Type=simple"
echo "    ExecStart=/usr/bin/myprogram"
echo "    Restart=always"
echo "    User=myuser"
echo
echo "    [Install]"
echo "    WantedBy=multi-user.target"
echo
echo "    Then:"
echo "    $ sudo systemctl daemon-reload"
echo "    $ sudo systemctl start myservice"
echo

# Reload daemon configuration
echo "13. Reloading Systemd Configuration"
echo "    After editing service files:"
echo "    $ sudo systemctl daemon-reload"
echo "    Must run before restarting modified services"
echo
echo "    Restart all services:"
echo "    $ sudo systemctl restart"
echo

# Common services
echo "14. Common System Services"
echo "    SSH server:"
echo "    $ sudo systemctl status ssh (Debian/Ubuntu)"
echo "    $ sudo systemctl status sshd (RedHat/CentOS)"
echo
echo "    Web servers:"
echo "    $ sudo systemctl status apache2"
echo "    $ sudo systemctl status nginx"
echo
echo "    Database servers:"
echo "    $ sudo systemctl status mysql"
echo "    $ sudo systemctl status postgresql"
echo
echo "    System services:"
echo "    $ sudo systemctl status cron"
echo "    $ sudo systemctl status rsyslog  (Logging)"
echo

# Troubleshooting services
echo "15. Troubleshooting Services"
echo "    Service won't start:"
echo "    1. Check status: systemctl status servicename"
echo "    2. View logs: journalctl -u servicename -n 50"
echo "    3. Check syntax: systemd-analyze verify servicename.service"
echo "    4. Test configuration if applicable"
echo
echo "    Service keeps crashing:"
echo "    1. Check logs for error messages"
echo "    2. Check service has required dependencies"
echo "    3. Check file permissions and ownership"
echo "    4. Run service manually to see errors"
echo

echo "=== System Services Summary ==="
echo "Key systemctl commands:"
echo "- systemctl start service - Start service"
echo "- systemctl stop service - Stop service"
echo "- systemctl restart service - Restart service"
echo "- systemctl enable service - Enable at boot"
echo "- systemctl disable service - Disable at boot"
echo "- systemctl status service - Check status"
echo "- journalctl -u service - View logs"
echo

################################################################################
