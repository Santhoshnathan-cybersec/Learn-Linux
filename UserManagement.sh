#!/bin/bash
# Understanding Users and Groups in Linux
# Linux is a multi-user system where each user has unique permissions

echo "=== Linux User Management ==="

# whoami - Shows current user
echo "Current user:"
whoami

# id - Shows user ID and group information
echo ""
echo "User and group information:"
id

# w - Shows who is logged in
echo ""
echo "Users logged in:"
w

# groups - Shows groups of current user
echo ""
echo "Groups for current user:"
groups

# home directory
echo ""
echo "User home directory:"
echo $HOME

# Users are stored in /etc/passwd
echo ""
echo "Sample user entries from /etc/passwd:"
head -3 /etc/passwd
