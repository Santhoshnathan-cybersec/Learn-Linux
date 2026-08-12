#!/bin/bash
# Backup and Recovery in Linux
# Creating and restoring backups

echo "=== Linux Backup and Recovery ==="

# tar - Archive files
echo "TAR - Archiving files:"
echo "tar -czf archive.tar.gz directory/"
echo "tar -xzf archive.tar.gz (extract)"

# Create sample backup
echo ""
echo "Creating sample backup:"
mkdir -p backup_demo
echo "Important data" > backup_demo/file.txt
tar -czf backup_demo.tar.gz backup_demo/
ls -lh backup_demo.tar.gz

# rsync - Sync files
echo ""
echo "RSYNC - Synchronizing files:"
echo "rsync -avz source/ destination/"
echo "rsync -avz --delete source/ destination/ (delete extra files)"

# Incremental backup
echo ""
echo "Incremental backup with find:"
echo "find directory -newer timestamp -type f"

# dd - Disk imaging
echo ""
echo "DD - Creating disk images:"
echo "dd if=/dev/sda of=disk_backup.img"
echo "dd if=disk_backup.img of=/dev/sda (restore)"

# Compression levels
echo ""
echo "Compression methods:"
echo "gzip - Standard compression"
echo "bzip2 - Better compression, slower"
echo "xz - Best compression, very slow"

# Restore from archive
echo ""
echo "Extracting backup:"
tar -xzf backup_demo.tar.gz
echo "Files restored:"
ls -la backup_demo/

# Cleanup
rm -rf backup_demo backup_demo.tar.gz
echo ""
echo "Demo files cleaned up"
