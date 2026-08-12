#!/bin/bash
# System Services in Linux
# Managing services with systemctl and init.d

echo "=== Linux System Services ==="

# systemctl - Control services
echo "SYSTEMCTL - Modern service management:"
echo "systemctl start service_name"
echo "systemctl stop service_name"
echo "systemctl restart service_name"
echo "systemctl status service_name"
echo "systemctl enable service_name (start on boot)"
echo "systemctl disable service_name (don't start on boot)"

# List all services
echo ""
echo "List all services:"
systemctl list-units --type=service --all | head -10

# Check service status
echo ""
echo "Sample service status:"
systemctl status ssh 2>/dev/null || systemctl status sshd

# Service files location
echo ""
echo "Service files location:"
echo "/etc/systemd/system/ - System services"
echo "/usr/lib/systemd/system/ - Package services"

# Service file example
echo ""
echo "Example .service file:"
echo "[Unit]"
echo "Description=My Service"
echo "After=network.target"
echo ""
echo "[Service]"
echo "Type=simple"
echo "ExecStart=/usr/bin/myapp"
echo "Restart=on-failure"
echo ""
echo "[Install]"
echo "WantedBy=multi-user.target"

# journalctl - View logs
echo ""
echo "View service logs:"
echo "journalctl -u service_name"
echo "journalctl -f (follow logs)"
