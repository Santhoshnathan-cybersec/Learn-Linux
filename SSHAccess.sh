#!/bin/bash
# SSH - Secure Shell
# Remote access and file transfer securely

echo "=== SSH - Secure Shell Basics ==="

# SSH key generation
echo "SSH Key Generation:"
echo "ssh-keygen -t rsa -b 4096"
echo "This creates:"
echo "  ~/.ssh/id_rsa - Private key (keep secret)"
echo "  ~/.ssh/id_rsa.pub - Public key (share with servers)"

# Check SSH keys
echo ""
echo "Current SSH keys:"
if [ -d ~/.ssh ]; then
    ls -la ~/.ssh/
else
    echo "No .ssh directory found"
fi

# SSH connection
echo ""
echo "SSH Connection:"
echo "ssh username@hostname"
echo "ssh user@192.168.1.100"
echo "ssh -p 2222 user@hostname (custom port)"

# SCP - Secure Copy
echo ""
echo "SCP - Copying files over SSH:"
echo "scp file.txt user@host:/path/"
echo "scp -r directory/ user@host:/path/"
echo "scp user@host:/file.txt ."

# SFTP - SSH File Transfer Protocol
echo ""
echo "SFTP - Interactive file transfer:"
echo "sftp user@host"
echo "Then use: ls, cd, get, put, etc."

# SSH config file
echo ""
echo "SSH Config file (~/.ssh/config):"
echo "Host myserver"
echo "  HostName example.com"
echo "  User myuser"
echo "  Port 22"

# SSH without password (key-based auth)
echo ""
echo "Copy public key to server:"
echo "ssh-copy-id -i ~/.ssh/id_rsa.pub user@host"
