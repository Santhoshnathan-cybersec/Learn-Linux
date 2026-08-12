#!/bin/bash

################################################################################
# SSHAccess.sh - SSH (Secure Shell) Basics
#
# This script explains SSH (Secure Shell) - the secure way to access
# remote Linux systems. SSH is the standard protocol for remote login
# and file transfer on Unix-like systems. Understanding SSH is essential
# for system administrators and anyone working with remote servers.
#
# Key concepts covered:
# - SSH basics and how it works
# - Connecting to remote systems (ssh)
# - Authentication methods (password, key-based)
# - Generating and managing SSH keys
# - SSH configuration
# - Copying files over SSH (scp, sftp)
# - SSH tunneling basics
################################################################################

echo "=== SSH (Secure Shell) Basics ==="
echo

# What is SSH?
echo "1. What is SSH?"
echo "   Secure Shell - protocol for secure remote access"
echo "   Encrypts all communication between client and server"
echo "   Replaces insecure protocols like Telnet and FTP"
echo "   Default SSH port: 22"
echo "   SSH server must be running on remote machine"
echo

# Basic SSH connection
echo "2. Basic SSH Connection"
echo "   Connect to remote server:"
echo "   $ ssh username@hostname"
echo "   $ ssh user@192.168.1.100"
echo "   $ ssh -p 2222 user@hostname  (Non-standard port)"
echo
echo "   First time connecting:"
echo "   Server key fingerprint is shown"
echo "   Type 'yes' to continue (adds to known_hosts)"
echo "   Then enter password"
echo

# Authentication methods
echo "3. Authentication Methods"
echo "   Password authentication (default):"
echo "   $ ssh username@hostname"
echo "   Enter password when prompted"
echo
echo "   Key-based authentication (more secure):"
echo "   $ ssh -i keyfile username@hostname"
echo "   No password needed (uses key pair)"
echo

# SSH keys - generation
echo "4. SSH Keys - Generating Keys"
echo "   Generate new key pair:"
echo "   $ ssh-keygen -t rsa -b 4096"
echo "   $ ssh-keygen -t ed25519  (Newer, more secure)"
echo
echo "   You'll be asked:"
echo "   - File location (default: ~/.ssh/id_rsa)"
echo "   - Passphrase (optional but recommended)"
echo
echo "   Files created:"
echo "   ~/.ssh/id_rsa  (Private key - keep secure!)"
echo "   ~/.ssh/id_rsa.pub  (Public key - share this)"
echo

# SSH keys - permissions
echo "5. SSH Keys - Correct Permissions"
echo "   Private key must have restricted permissions:"
echo "   $ chmod 600 ~/.ssh/id_rsa"
echo "   $ chmod 600 ~/.ssh/id_ed25519"
echo
echo "   SSH directory permissions:"
echo "   $ chmod 700 ~/.ssh"
echo
echo "   Public key permissions:"
echo "   $ chmod 644 ~/.ssh/id_rsa.pub"
echo "   Wrong permissions will prevent SSH login"
echo

# Copying public key to server
echo "6. Adding Public Key to Remote Server"
echo "   Method 1: Using ssh-copy-id (easiest)"
echo "   $ ssh-copy-id -i ~/.ssh/id_rsa.pub username@hostname"
echo "   Copies your public key to remote server"
echo "   Requires password once"
echo
echo "   Method 2: Manual copy"
echo "   $ cat ~/.ssh/id_rsa.pub"
echo "   Copy output, then on remote server:"
echo "   $ mkdir -p ~/.ssh"
echo "   $ echo 'your_public_key' >> ~/.ssh/authorized_keys"
echo "   $ chmod 600 ~/.ssh/authorized_keys"
echo
echo "   Method 3: Using scp to copy file"
echo "   $ scp ~/.ssh/id_rsa.pub username@hostname:~/"
echo "   Then append on remote: cat ~/id_rsa.pub >> ~/.ssh/authorized_keys"
echo

# Known hosts
echo "7. Known Hosts and Security"
echo "   First connection stores server's key:"
echo "   ~/.ssh/known_hosts"
echo
echo "   View known hosts:"
echo "   $ cat ~/.ssh/known_hosts"
echo
echo "   Remove a host:"
echo "   $ ssh-keygen -R hostname"
echo "   $ ssh-keygen -R 192.168.1.100"
echo
echo "   Check server key fingerprint:"
echo "   $ ssh-keygen -l -f /etc/ssh/ssh_host_rsa_key.pub"
echo

# SSH configuration file
echo "8. SSH Configuration (~/.ssh/config)"
echo "   Create shortcuts for frequently used servers:"
echo "   $ nano ~/.ssh/config"
echo
echo "   Example config:"
echo "   Host myserver"
echo "       HostName example.com"
echo "       User myusername"
echo "       Port 22"
echo "       IdentityFile ~/.ssh/id_rsa"
echo
echo "   Then simply: $ ssh myserver"
echo

# Copying files with scp
echo "9. SCP - Secure Copy"
echo "   Copy file from local to remote:"
echo "   $ scp localfile.txt username@hostname:/path/"
echo "   $ scp myfile.txt user@host:~/"
echo
echo "   Copy file from remote to local:"
echo "   $ scp username@hostname:/path/file.txt ."
echo "   $ scp user@host:~/file.txt ./local_copy.txt"
echo
echo "   Copy entire directory:"
echo "   $ scp -r local_dir/ username@hostname:/path/"
echo "   $ scp -r username@hostname:/path/dir ./local_dir"
echo

# SFTP - Interactive file transfer
echo "10. SFTP - Secure File Transfer Protocol"
echo "    Interactive file transfer:"
echo "    $ sftp username@hostname"
echo
echo "    Common sftp commands:"
echo "    ls - List remote files"
echo "    pwd - Print remote working directory"
echo "    get file.txt - Download file"
echo "    put file.txt - Upload file"
echo "    mkdir dirname - Create remote directory"
echo "    cd dirname - Change remote directory"
echo "    lcd dirname - Change local directory"
echo "    exit - Disconnect"
echo

# SSH command execution
echo "11. Execute Commands via SSH"
echo "    Run command on remote server:"
echo "    $ ssh username@hostname 'command'"
echo "    $ ssh user@host 'ls -la'"
echo "    $ ssh user@host 'cat /etc/os-release'"
echo
echo "    Example with pipes:"
echo "    $ ssh user@host 'ps aux | grep apache'"
echo "    $ ssh user@host 'df -h' > disk_usage.txt"
echo

# SSH tunneling (port forwarding)
echo "12. SSH Tunneling - Port Forwarding"
echo "    Local forwarding (access remote service locally):"
echo "    $ ssh -L 3306:localhost:3306 username@hostname"
echo "    Now access remote MySQL via local localhost:3306"
echo
echo "    Remote forwarding (expose local service):"
echo "    $ ssh -R 8080:localhost:3000 username@hostname"
echo "    Remote server can access local port 3000 via :8080"
echo
echo "    Dynamic tunneling (SOCKS proxy):"
echo "    $ ssh -D 1080 username@hostname"
echo "    Use localhost:1080 as SOCKS5 proxy"
echo

# SSH options
echo "13. Useful SSH Options"
echo "    -v : Verbose output (for debugging)"
echo "    $ ssh -v user@host  (Show connection details)"
echo
echo "    -q : Quiet mode"
echo "    $ ssh -q user@host"
echo
echo "    -X : X11 forwarding (GUI applications)"
echo "    $ ssh -X user@host"
echo
echo "    -t : Force TTY allocation"
echo "    $ ssh -t user@host 'command'"
echo
echo "    -A : SSH agent forwarding"
echo "    $ ssh -A user@host  (Forward your SSH key)"
echo

# SSH security best practices
echo "14. SSH Security Best Practices"
echo "    - Use key-based authentication instead of passwords"
echo "    - Use strong passphrase for private key"
echo "    - Protect private key: chmod 600"
echo "    - Disable root login: edit /etc/ssh/sshd_config"
echo "    - Disable password authentication on server"
echo "    - Use non-standard port (optional, not security)"
echo "    - Keep SSH software updated"
echo "    - Use SSH keys with restricted permissions"
echo "    - Monitor /var/log/auth.log for login attempts"
echo

# Troubleshooting SSH
echo "15. SSH Troubleshooting"
echo "    Connection refused:"
echo "    - Check if SSH server is running: sudo systemctl status ssh"
echo "    - Check SSH port: sudo ss -tlnp | grep ssh"
echo "    - Check firewall: sudo ufw status"
echo
echo "    Permission denied (publickey):"
echo "    - Check public key in ~/.ssh/authorized_keys"
echo "    - Check permissions: chmod 700 ~/.ssh && chmod 600 ~/.ssh/*"
echo
echo "    Debug connection:"
echo "    $ ssh -vvv user@host  (Very verbose debugging)"
echo

echo "=== SSH Summary ==="
echo "Key concepts:"
echo "- SSH provides secure remote access to servers"
echo "- Two authentication methods: password and key-based"
echo "- Key-based auth is more secure"
echo "- Use ssh-keygen to generate keys"
echo "- Use ssh to connect, scp to copy files, sftp for interactive transfer"
echo "- Follow security best practices"
echo

################################################################################
