#!/bin/bash
# Understanding Linux File System Hierarchy
# The Linux file system is organized in a tree structure starting from root (/)

echo "=== Linux File System Structure ==="

# / - Root directory (parent of all directories)
echo "Root directory: /"

# /home - Contains user home directories
echo "/home - User home directories"

# /etc - Configuration files
echo "/etc - Configuration files"

# /bin - Binary executables (essential commands)
echo "/bin - Essential binary executables"

# /usr - User programs and data
echo "/usr - User programs and data"

# /var - Variable data (logs, temporary files)
echo "/var - Variable data and logs"

# /tmp - Temporary files
echo "/tmp - Temporary files"

# List current directory
echo ""
echo "Files in current directory:"
ls -la

# Show current working directory
echo ""
echo "Current path:"
pwd
