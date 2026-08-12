#!/bin/bash

################################################################################
# UserManagement.sh - Linux User and Group Management
#
# This script explains how to manage users and groups in Linux.
# In Linux, users and groups are the basis for access control and
# permissions management. Understanding user management is crucial
# for system administration and security.
#
# Key concepts covered:
# - User accounts and UIDs (User IDs)
# - Group accounts and GIDs (Group IDs)
# - Creating and managing users (useradd, usermod)
# - Creating and managing groups (groupadd, groupmod)
# - User information files (/etc/passwd, /etc/group)
################################################################################

echo "=== Linux User and Group Management ==="
echo

# Understanding users and groups
echo "1. What are Users and Groups?"
echo "   Users: Individual accounts on the system (each has UID - User ID)"
echo "   Groups: Collections of users (each has GID - Group ID)"
echo "   Every file has an owner (user) and group association"
echo "   This controls who can access files and resources"
echo

# Current user
echo "2. Current User Information"
echo "   $ id"
id
echo "   $ whoami"
whoami
echo "   $ groups"
groups
echo

# User database file
echo "3. User Database (/etc/passwd)"
echo "   Each line represents one user account"
echo "   Format: username:password:UID:GID:full_name:home_dir:shell"
echo "   $ head -5 /etc/passwd"
head -5 /etc/passwd
echo

# Group database file
echo "4. Group Database (/etc/group)"
echo "   Each line represents one group"
echo "   Format: groupname:password:GID:members"
echo "   $ head -5 /etc/group"
head -5 /etc/group
echo

# Listing users and groups
echo "5. Viewing All Users and Groups"
echo "   $ getent passwd  (List all users)"
echo "   $ getent group   (List all groups)"
echo "   $ awk -F: '{print \$1}' /etc/passwd  (Extract usernames)"
echo "   $ awk -F: '{print \$1}' /etc/group   (Extract group names)"
echo

# Creating users
echo "6. Creating Users (requires root/sudo)"
echo "   $ sudo useradd username"
echo "   $ sudo useradd -m -s /bin/bash username  (Create with home dir and shell)"
echo "   $ sudo useradd -m -d /home/custom -s /bin/bash username"
echo "   Options:"
echo "   -m  Create home directory"
echo "   -s  Specify shell"
echo "   -d  Specify home directory"
echo "   -u  Specify UID"
echo "   -g  Specify primary group"
echo

# Creating groups
echo "7. Creating Groups (requires root/sudo)"
echo "   $ sudo groupadd groupname"
echo "   $ sudo groupadd -g 1500 groupname  (Specify GID)"
echo "   Options:"
echo "   -g  Specify GID"
echo

# Adding users to groups
echo "8. Adding Users to Groups (requires root/sudo)"
echo "   $ sudo usermod -a -G groupname username"
echo "   -a  Append (add to additional groups)"
echo "   -G  Specify supplementary groups"
echo "   $ sudo usermod -a -G sudo,docker username"
echo

# Modifying user accounts
echo "9. Modifying User Accounts (requires root/sudo)"
echo "   $ sudo usermod -l newusername oldusername  (Rename user)"
echo "   $ sudo usermod -s /bin/bash username  (Change shell)"
echo "   $ sudo usermod -d /new/home username  (Change home directory)"
echo "   $ sudo usermod -L username  (Lock account)"
echo "   $ sudo usermod -U username  (Unlock account)"
echo

# Deleting users and groups
echo "10. Deleting Users and Groups (requires root/sudo)"
echo "    $ sudo userdel username"
echo "    $ sudo userdel -r username  (Remove user and home directory)"
echo "    $ sudo groupdel groupname"
echo "    Warning: Be careful when deleting users/groups!"
echo

# Setting passwords
echo "11. User Passwords (requires root/sudo)"
echo "    $ sudo passwd username"
echo "    You'll be prompted to enter a new password"
echo "    $ sudo passwd -l username  (Lock account)"
echo "    $ sudo passwd -u username  (Unlock account)"
echo "    $ sudo passwd -d username  (Delete password)"
echo

# User information
echo "12. Viewing User Information"
echo "    $ finger username  (Show detailed user info, if installed)"
echo "    $ lastlog  (Show last login information)"
echo "    $ who  (Show currently logged in users)"
echo "    $ last  (Show login history)"
echo

# Important system users
echo "13. Important System Users"
echo "    root   - Administrator with UID 0"
echo "    bin    - Binary file owner"
echo "    sys    - System processes"
echo "    nobody - Used for processes that need minimal privileges"
echo "    daemon - System services"
echo

# Special group: sudo
echo "14. The 'sudo' Group"
echo "    Users in the 'sudo' group can execute commands with root privileges"
echo "    $ sudo -l  (List sudo permissions)"
echo "    $ sudo command  (Execute command as root)"
echo

echo "=== User and Group Management Summary ==="
echo "Users and groups are fundamental to Linux security."
echo "Proper user management ensures system security and resource control."
echo "Most user management commands require root or sudo privileges."
echo

################################################################################
