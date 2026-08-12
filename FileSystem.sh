#!/bin/bash

################################################################################
# FileSystem.sh - Linux File System Basics
# 
# This script explains the Linux file system hierarchy and structure.
# The Linux file system is organized in a tree-like structure with the root (/)
# at the top, and various directories serving different purposes.
#
# Key concepts covered:
# - Root directory (/)
# - Standard Linux directories and their purposes
# - Absolute vs relative paths
# - File system navigation basics
################################################################################

echo "=== Linux File System Basics ==="
echo

# The root directory (/)
echo "1. Root Directory (/)"
echo "   The root directory is the top-level directory in Linux."
echo "   All files and directories are under the root directory."
echo "   Current root contents:"
echo "   $ ls /"
ls /
echo

# Home directory
echo "2. Home Directory (~)"
echo "   Each user has a home directory where personal files are stored."
echo "   Your home directory is: $HOME"
echo "   Contents of home directory:"
pwd
echo

# Important Linux directories
echo "3. Important System Directories"
echo

echo "   /bin  - Binary executables for basic commands (ls, cd, mkdir, etc.)"
echo "   $ ls /bin | head -5"
ls /bin | head -5
echo

echo "   /etc  - System configuration files"
echo "   $ ls /etc | head -5"
ls /etc | head -5
echo

echo "   /var  - Variable files (logs, temporary data, spool files)"
echo "   $ ls /var | head -5"
ls /var | head -5
echo

echo "   /usr  - User programs and data"
echo "   $ ls /usr | head -5"
ls /usr | head -5
echo

echo "   /home - User home directories"
echo "   $ ls /home"
ls /home 2>/dev/null || echo "   (May require elevated privileges)"
echo

echo "   /tmp  - Temporary files (cleared on reboot)"
echo "   $ ls /tmp | head -5"
ls /tmp 2>/dev/null | head -5
echo

echo "   /root - Root user's home directory"
echo "   $ ls /root"
ls /root 2>/dev/null || echo "   (Requires elevated privileges)"
echo

# Absolute paths
echo "4. Absolute Paths"
echo "   Absolute paths start with / and show the complete path from root"
echo "   Examples:"
echo "   /home/user/documents/file.txt"
echo "   /etc/passwd"
echo "   /usr/local/bin/myprogram"
echo

# Relative paths
echo "5. Relative Paths"
echo "   Relative paths are relative to the current directory"
echo "   Current directory: $(pwd)"
echo "   Examples of relative paths:"
echo "   ./myfile.txt      (file in current directory)"
echo "   ../myfile.txt     (file in parent directory)"
echo "   subdir/file.txt   (file in subdirectory)"
echo

# File types and listing
echo "6. Understanding File Listings"
echo "   $ ls -l README.md 2>/dev/null || echo 'Example: -rw-r--r-- 1 user group 1234 Aug 12 10:30 README.md'"
echo "   Parts:"
echo "   - (-) First character: file type (- = regular file, d = directory, l = symlink)"
echo "   - (rw-r--r--) Permissions (owner, group, others)"
echo "   - (1) Number of links"
echo "   - (user) Owner of the file"
echo "   - (group) Group owner"
echo "   - (1234) File size in bytes"
echo "   - (Aug 12 10:30) Last modification date/time"
echo "   - (filename) Name of the file"
echo

# Path expansion
echo "7. Common Path Shortcuts"
echo "   ~       Current user's home directory"
echo "   .       Current directory"
echo "   ..      Parent directory"
echo "   -       Previous directory (in shell)"
echo

echo "=== File System Concepts Summary ==="
echo "The Linux file system organizes everything in a hierarchical structure"
echo "starting from the root directory (/). Understanding the directory"
echo "structure helps you navigate and manage files efficiently."
echo

################################################################################
