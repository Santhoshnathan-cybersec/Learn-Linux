#!/bin/bash

################################################################################
# FilePermissions.sh - Linux File Permissions and Ownership
#
# This script explains file permissions in Linux.
# File permissions control who can read, write, and execute files.
# Understanding permissions is essential for system security and file access control.
#
# Key concepts covered:
# - Permission types (read, write, execute)
# - Permission levels (owner, group, others)
# - Numeric (octal) and symbolic representation
# - chmod (change mode/permissions)
# - chown (change owner)
# - chgrp (change group)
# - umask (default permissions)
################################################################################

echo "=== Linux File Permissions and Ownership ==="
echo

# Understanding permissions
echo "1. File Permissions Overview"
echo "   Every file has three permission types:"
echo "   r (read)    - 4 - Can read/view file contents"
echo "   w (write)   - 2 - Can modify/edit file"
echo "   x (execute) - 1 - Can run file as program (for directories, can access)"
echo

echo "2. Permission Levels"
echo "   Three levels of permission for each file:"
echo "   Owner/User  - Permissions for file owner"
echo "   Group       - Permissions for group members"
echo "   Others      - Permissions for everyone else"
echo

# Viewing permissions
echo "3. Viewing File Permissions"
echo "   $ ls -l"
echo "   Example output:"
echo "   -rw-r--r-- 1 user group 1234 Aug 12 10:30 myfile.txt"
echo
echo "   Breaking down: -rw-r--r--"
echo "   - First character: file type (- = file, d = directory, l = symlink)"
echo "   - Next 3 chars (rw-): owner permissions (read, write, no execute)"
echo "   - Next 3 chars (r--): group permissions (read only)"
echo "   - Last 3 chars (r--): others permissions (read only)"
echo

# Numeric permissions
echo "4. Numeric (Octal) Permission Representation"
echo "   Each permission level is calculated:"
echo "   r (read)    = 4"
echo "   w (write)   = 2"
echo "   x (execute) = 1"
echo
echo "   Examples:"
echo "   7 (4+2+1) = rwx (read, write, execute)"
echo "   6 (4+2)   = rw- (read, write)"
echo "   5 (4+1)   = r-x (read, execute)"
echo "   4 (4)     = r-- (read only)"
echo "   3 (2+1)   = -wx (write, execute)"
echo "   2 (2)     = -w- (write only)"
echo "   1 (1)     = --x (execute only)"
echo "   0         = --- (no permissions)"
echo

echo "5. Full Permission Examples"
echo "   755 = rwxr-xr-x  (Owner: full, Group: read+execute, Others: read+execute)"
echo "   644 = rw-r--r--  (Owner: read+write, Group: read, Others: read)"
echo "   700 = rwx------  (Owner: full, Group: none, Others: none)"
echo "   777 = rwxrwxrwx  (Everyone: full permissions)"
echo "   400 = r--------  (Owner: read only, Group: none, Others: none)"
echo

# chmod - change permissions
echo "6. chmod - Change File Permissions"
echo "   Numeric method (octal):"
echo "   $ chmod 755 filename         (Set specific permissions)"
echo "   $ chmod 644 myfile.txt       (Owner: rw, Group: r, Others: r)"
echo "   $ chmod 700 myscript.sh      (Only owner can access)"
echo
echo "   Symbolic method:"
echo "   u = user (owner), g = group, o = others, a = all"
echo "   + = add, - = remove, = = set exactly"
echo "   r = read, w = write, x = execute"
echo
echo "   $ chmod u+x script.sh        (Add execute for owner)"
echo "   $ chmod g-w filename         (Remove write for group)"
echo "   $ chmod o-r filename         (Remove read for others)"
echo "   $ chmod a+r filename         (Add read for all)"
echo "   $ chmod u=rwx,g=rx,o=       (Set specific permissions)"
echo

# chown - change owner
echo "7. chown - Change File Owner (requires root/sudo)"
echo "   $ sudo chown newowner filename"
echo "   $ sudo chown newowner:newgroup filename"
echo "   $ sudo chown -R newowner directory/  (Recursive - change dir and contents)"
echo

# chgrp - change group
echo "8. chgrp - Change Group (requires root/sudo)"
echo "   $ sudo chgrp newgroup filename"
echo "   $ sudo chgrp -R newgroup directory/  (Recursive)"
echo

# Current permissions example
echo "9. Practical Permission Examples"
echo "   Creating a new file:"
ls -l .bashrc 2>/dev/null || echo "   $ touch myfile.txt"
echo
echo "   Making a script executable:"
echo "   $ chmod +x script.sh"
echo "   $ chmod 755 script.sh"
echo
echo "   Making a file read-only:"
echo "   $ chmod 444 important_file.txt"
echo "   $ chmod a-w file.txt  (Remove write for everyone)"
echo
echo "   Restricting access to owner only:"
echo "   $ chmod 700 private_file"
echo

# Directory permissions
echo "10. Directory Permissions"
echo "    r (read)    - Can list directory contents (ls)"
echo "    w (write)   - Can create/delete files in directory"
echo "    x (execute) - Can access/enter directory (cd)"
echo "    Example: chmod 755 dirname  (typical directory permissions)"
echo

# Umask - default permissions
echo "11. umask - Default Permissions Mask"
echo "    umask determines default permissions for new files"
echo "    Current umask:"
umask
echo "    Default file: 666 - umask"
echo "    Default dir:  777 - umask"
echo "    Common umask values:"
echo "    0022 - Default, creates files as 644, directories as 755"
echo "    0077 - Restrictive, creates files as 600, directories as 700"
echo "    $ umask 0077  (Set umask for current session)"
echo

# Special permissions (advanced)
echo "12. Special Permissions (Advanced)"
echo "    suid (Set User ID)  - File executes with owner's privileges (4)"
echo "    sgid (Set Group ID) - File executes with group's privileges (2)"
echo "    sticky (Sticky bit) - Only owner can delete file in shared dir (1)"
echo "    $ chmod 4755 filename  (Add suid)"
echo "    $ chmod 2755 dirname   (Add sgid)"
echo "    $ chmod 1777 dirname   (Add sticky bit)"
echo

echo "=== File Permissions Summary ==="
echo "Understanding permissions is crucial for:"
echo "- System security"
echo "- Protecting sensitive files"
echo "- Enabling proper file sharing"
echo "- Running scripts and executables"
echo

################################################################################
