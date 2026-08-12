#!/bin/bash
# Understanding File Permissions in Linux
# Every file has owner, group, and permission settings

echo "=== Linux File Permissions ==="

# Create test file
echo "Test content" > permission_test.txt

# ls -l shows permissions in detail
echo "File with permissions:"
ls -l permission_test.txt

# Permission format: drwxrwxrwx
# First character: d (directory) or - (file)
# Next 3: owner permissions (r=read, w=write, x=execute)
# Next 3: group permissions
# Last 3: others permissions

# chmod - Change permissions
echo ""
echo "Adding execute permission:"
chmod +x permission_test.txt
ls -l permission_test.txt

# chmod with numeric values
# 4=read, 2=write, 1=execute
# 7=rwx (4+2+1), 5=r-x (4+1)
chmod 644 permission_test.txt
echo "Setting to 644 (rw-r--r--):"
ls -l permission_test.txt

# chown - Change owner (needs sudo)
echo ""
echo "Current owner:"
ls -l permission_test.txt | awk '{print $3,$4}'

# Cleanup
rm -f permission_test.txt
echo "Cleaned up"
