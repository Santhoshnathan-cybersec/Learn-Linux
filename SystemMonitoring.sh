#!/bin/bash
# System Monitoring in Linux
# Check system health and resource usage

echo "=== Linux System Monitoring ==="

# uptime - System uptime and load average
echo "System uptime:"
uptime

# free - Memory usage
echo ""
echo "Memory usage:"
free -h

# df - Disk space usage
echo ""
echo "Disk space usage:"
df -h

# du - Directory size
echo ""
echo "Current directory size:"
du -sh .

# top - Live process monitor
echo ""
echo "CPU usage info:"
top -bn1 | head -10

# vmstat - Virtual memory statistics
echo ""
echo "Virtual memory stats:"
vmstat 1 2

# iostat - I/O statistics
echo ""
echo "I/O statistics:"
iostat 1 2 2>/dev/null || echo "iostat not installed"

# netstat - Network statistics
echo ""
echo "Active connections:"
netstat -tuln 2>/dev/null | head -10 || ss -tuln | head -10
