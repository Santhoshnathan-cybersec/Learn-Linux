#!/bin/bash

################################################################################
# SystemMonitoring.sh - Linux System Monitoring and Performance
#
# This script explains how to monitor system resources in Linux.
# System monitoring helps you understand how your computer is performing,
# identify bottlenecks, and ensure optimal resource utilization.
# Linux provides many tools to monitor CPU, memory, disk, and network usage.
#
# Key concepts covered:
# - CPU usage and load average
# - Memory and swap usage
# - Disk space and I/O usage
# - Network monitoring
# - System uptime and processes
# - Monitoring tools (top, htop, df, free, iostat, etc.)
################################################################################

echo "=== Linux System Monitoring and Performance ==="
echo

# Uptime and system information
echo "1. uptime - System Uptime and Load Average"
echo "   $ uptime"
uptime
echo
echo "   Output explains:"
echo "   Current time"
echo "   How long system has been running"
echo "   Number of users logged in"
echo "   Load average (1, 5, 15 minutes)"
echo "   - Load average shows how many processes want CPU"
echo "   - On single core: 1.0 = fully loaded, 2.0 = double loaded"
echo "   - On dual core: 2.0 = fully loaded, 4.0 = double loaded"
echo

# free - Memory usage
echo "2. free - Memory and Swap Usage"
echo "   $ free"
free
echo
echo "   $ free -h  (Human readable format)"
echo "   $ free -m  (Show in megabytes)"
echo "   $ free -g  (Show in gigabytes)"
echo
echo "   Columns explained:"
echo "   total   - Total installed RAM"
echo "   used    - Memory currently in use"
echo "   free    - Memory available for use"
echo "   shared  - Memory shared between processes"
echo "   buffers - Memory used for I/O buffering"
echo "   cache   - Memory used for caching"
echo "   available - Memory available for new processes"
echo

# df - Disk space
echo "3. df - Disk Space Usage"
echo "   $ df"
df -h | head -5
echo
echo "   $ df -h  (Human readable)"
echo "   $ df -i  (Show inode usage)"
echo
echo "   Shows:"
echo "   Filesystem size, used space, available space for each mounted disk"
echo "   Use% - Percentage of disk used (warn if > 90%)"
echo "   Mounted on - Where the filesystem is mounted"
echo

# du - Directory disk usage
echo "4. du - Directory Disk Usage"
echo "   $ du /home"
echo "   $ du -h /path  (Human readable)"
echo "   $ du -s /path  (Total for directory only)"
echo "   $ du -sh *  (Size of each item in current directory)"
echo "   Shows how much space directories and files use"
echo

# top - Interactive system monitor
echo "5. top - Interactive System Monitor"
echo "   $ top"
echo "   Real-time view of system resources and processes"
echo "   Shows top processes by CPU or memory usage"
echo
echo "   Useful keyboard commands in top:"
echo "   q - Quit"
echo "   P - Sort by CPU usage"
echo "   M - Sort by memory usage"
echo "   u - Show processes for specific user"
echo "   k - Kill a process"
echo "   1 - Show CPU details"
echo "   s - Change refresh interval"
echo

# htop - Enhanced top
echo "6. htop - Enhanced Interactive Monitor"
echo "   $ htop"
echo "   Better alternative to top (if installed)"
echo "   Features:"
echo "   - Color-coded output"
echo "   - Better layout"
echo "   - Easier to use"
echo "   Install: sudo apt install htop"
echo

# ps for monitoring
echo "7. ps - List Processes (for monitoring)"
echo "   Check resource usage by process:"
echo "   $ ps aux --sort=-%cpu | head -10  (Top CPU users)"
echo "   $ ps aux --sort=-%mem | head -10  (Top memory users)"
echo

# iostat - I/O statistics
echo "8. iostat - Input/Output Statistics"
echo "   Shows disk read/write statistics"
echo "   $ iostat"
echo "   $ iostat -x  (Extended statistics)"
echo "   $ iostat 2 5  (Show 5 reports, 2 seconds apart)"
echo "   May need to install: sudo apt install sysstat"
echo

# vmstat - Virtual memory statistics
echo "9. vmstat - Virtual Memory Statistics"
echo "   $ vmstat"
echo "   $ vmstat 1 5  (5 reports, 1 second apart)"
echo "   Shows:"
echo "   - Virtual memory stats"
echo "   - Process information"
echo "   - I/O information"
echo "   - System activity"
echo

# Monitoring network usage
echo "10. Network Monitoring"
echo "    Check network interface statistics:"
echo "    $ ip -s link show  (Show all interfaces with stats)"
echo "    $ netstat -i  (Network interface statistics)"
echo "    $ ss -i  (Socket statistics)"
echo
echo "    Real-time network monitoring:"
echo "    $ iftop  (Shows bandwidth usage by connection)"
echo "    $ nethogs  (Shows bandwidth by process)"
echo "    $ nload  (Bandwidth monitor)"
echo "    Install if needed: sudo apt install iftop nethogs nload"
echo

# System load
echo "11. System Load"
echo "    Check load average:"
echo "    $ cat /proc/loadavg"
echo "    $ uptime"
echo
echo "    First number = 1-minute load average"
echo "    Second number = 5-minute load average"
echo "    Third number = 15-minute load average"
echo
echo "    Compare to number of CPU cores:"
echo "    $ nproc  (Show number of processors)"
echo "    $ grep -c processor /proc/cpuinfo  (Alternative)"
echo

# Temperature and fan monitoring
echo "12. System Temperature and Fans"
echo "    Check CPU temperature:"
echo "    $ sensors  (If lm-sensors installed)"
echo "    Install: sudo apt install lm-sensors"
echo "    $ acpi -t  (Check battery and temperature)"
echo

# Monitoring disk I/O
echo "13. Monitoring Disk I/O Activity"
echo "    See what's accessing the disk:"
echo "    $ iotop  (Shows I/O by process)"
echo "    $ iostat 1  (Continuous I/O stats)"
echo "    $ pidof iotop  (Get PID of running process)"
echo

# System logs and messages
echo "14. System Logs and Messages"
echo "    Check system messages:"
echo "    $ dmesg  (Recent system messages)"
echo "    $ dmesg | tail -20  (Last 20 messages)"
echo "    $ tail -f /var/log/syslog  (Follow system log, Debian/Ubuntu)"
echo "    $ tail -f /var/log/messages  (Follow system log, RedHat/CentOS)"
echo

# Monitoring summary
echo "15. Quick System Health Check"
echo "    One command to check overall system:"
echo "    $ echo '=== Uptime ==='; uptime; echo '=== Memory ==='; free -h; echo '=== Disk ==='; df -h /"
echo

echo "=== System Monitoring Summary ==="
echo "Key monitoring tools:"
echo "- uptime: Check load average"
echo "- free: Check memory usage"
echo "- df: Check disk space"
echo "- top/htop: Monitor processes and resources"
echo "- iostat/vmstat: Monitor system activity"
echo "- dmesg/logs: Check for errors"
echo

################################################################################
