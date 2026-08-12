#!/bin/bash

################################################################################
# BackupRecovery.sh - Backup and Recovery Operations
#
# This script explains backup and recovery operations in Linux.
# Backing up data is crucial for protecting against data loss due to
# hardware failure, accidental deletion, or system compromise.
# Linux provides many tools for creating backups and restoring data.
#
# Key concepts covered:
# - Importance of backups
# - tar: Archive and compress files
# - rsync: Synchronize and backup directories
# - dd: Disk imaging
# - cron: Automated backups
# - Backup strategies and best practices
################################################################################

echo "=== Backup and Recovery Operations ==="
echo

# Why backup?
echo "1. Why Backups Are Important"
echo "   Reasons to backup:"
echo "   - Hardware failure (disk crash)"
echo "   - Accidental file deletion"
echo "   - Ransomware/malware infection"
echo "   - Software bugs/corruption"
echo "   - Disaster recovery"
echo "   - Compliance requirements"
echo
echo "   A good backup strategy includes:"
echo "   - Regular backups (daily, weekly, monthly)"
echo "   - Multiple copies (local and offsite)"
echo "   - Tested recovery procedures"
echo "   - Automated backup process"
echo

# tar - Create archives
echo "2. tar - Archive Files and Directories"
echo "   Create archive:"
echo "   $ tar -cvf archive.tar /path/to/files"
echo "   c = create, v = verbose, f = file"
echo
echo "   Create compressed archive:"
echo "   $ tar -cvzf archive.tar.gz /path/to/files  (gzip)"
echo "   $ tar -cvjf archive.tar.bz2 /path/to/files  (bzip2)"
echo "   $ tar -cvJf archive.tar.xz /path/to/files  (xz)"
echo
echo "   List archive contents:"
echo "   $ tar -tvf archive.tar"
echo "   $ tar -tvzf archive.tar.gz"
echo
echo "   Extract archive:"
echo "   $ tar -xvf archive.tar"
echo "   $ tar -xvzf archive.tar.gz"
echo "   $ tar -xvf archive.tar -C /destination"
echo "   x = extract"
echo

# tar options
echo "3. tar - Useful Options"
echo "   --exclude: Skip files matching pattern"
echo "   $ tar -czf backup.tar.gz --exclude='*.log' /home"
echo "   $ tar -czf backup.tar.gz --exclude='/tmp' /"
echo
echo "   --exclude-from: Read exclusions from file"
echo "   $ tar -czf backup.tar.gz -X excludelist.txt /home"
echo
echo "   --incremental: Incremental backup"
echo "   $ tar -czf backup-$(date +%Y%m%d).tar.gz -g backup.snar /data"
echo

# rsync - Synchronize directories
echo "4. rsync - Synchronize and Backup"
echo "   Basic rsync:"
echo "   $ rsync -av /source/ /destination/"
echo "   a = archive, v = verbose"
echo
echo "   Rsync to remote:"
echo "   $ rsync -av /local/path/ username@host:/remote/path/"
echo "   $ rsync -av username@host:/remote/path/ /local/path/"
echo
echo "   Useful options:"
echo "   --delete: Delete files in destination not in source"
echo "   --exclude: Skip matching files"
echo "   --exclude-from: Read exclusions from file"
echo "   --backup: Create backups of changed files"
echo "   $ rsync -av --delete --exclude='*.tmp' /source/ /dest/"
echo

# rsync advanced
echo "5. rsync - Advanced Usage"
echo "   Dry run (test without making changes):"
echo "   $ rsync -av --dry-run /source/ /destination/"
echo
echo "   Incremental backup:"
echo "   $ rsync -av --backup --backup-dir=backup-$(date +%Y%m%d) /src/ /dst/"
echo
echo "   Backup only changed files:"
echo "   $ rsync -av --newer-mtime-than=timestamp.txt /source/ /backup/"
echo
echo "   Exclude multiple patterns:"
echo "   $ rsync -av --exclude='*.log' --exclude='*.tmp' --exclude='cache' /src/ /dst/"
echo

# dd - Disk imaging
echo "6. dd - Disk Imaging and Cloning"
echo "   Create full disk image:"
echo "   $ sudo dd if=/dev/sda of=disk_image.img bs=4M status=progress"
echo "   if = input file, of = output file, bs = block size"
echo
echo "   Create partition image:"
echo "   $ sudo dd if=/dev/sda1 of=partition_image.img bs=4M status=progress"
echo
echo "   Restore from image:"
echo "   $ sudo dd if=disk_image.img of=/dev/sda bs=4M status=progress"
echo
echo "   WARNING: dd is dangerous! Double-check device names"
echo "   Be careful not to restore to wrong device!"
echo

# gzip and compression
echo "7. Compression Tools"
echo "   gzip - Compress single files:"
echo "   $ gzip largefile.txt  (Creates largefile.txt.gz)"
echo "   $ gunzip largefile.txt.gz  (Decompress)"
echo
echo "   bzip2 - Better compression, slower:"
echo "   $ bzip2 largefile.txt"
echo "   $ bunzip2 largefile.txt.bz2"
echo
echo "   xz - Best compression, very slow:"
echo "   $ xz largefile.txt"
echo "   $ unxz largefile.txt.xz"
echo
echo "   Check compression ratio:"
echo "   $ ls -lh largefile.txt largefile.txt.gz"
echo

# Backup scripts
echo "8. Automated Backups with Scripts"
echo "   Simple daily backup script:"
echo "   #!/bin/bash"
echo "   BACKUP_DIR=/backup/daily"
echo "   DATE=\$(date +%Y%m%d)"
echo "   tar -czf \${BACKUP_DIR}/backup_\${DATE}.tar.gz /home /etc"
echo "   echo 'Backup completed: \${DATE}'"
echo
echo "   Backup script with rotation:"
echo "   BACKUP_FILE=\${BACKUP_DIR}/backup_\${DATE}.tar.gz"
echo "   tar -czf \${BACKUP_FILE} /important/data"
echo "   find \${BACKUP_DIR} -name 'backup_*.tar.gz' -mtime +30 -delete"
echo "   (Deletes backups older than 30 days)"
echo

# Cron for scheduled backups
echo "9. Scheduled Backups with Cron"
echo "   Edit crontab:"
echo "   $ crontab -e"
echo
echo "   Add backup job:"
echo "   0 2 * * * /usr/local/bin/daily-backup.sh"
echo "   (Runs at 2:00 AM every day)"
echo
echo "   Other examples:"
echo "   30 3 * * 0 /usr/local/bin/weekly-backup.sh  (Sunday 3:30 AM)"
echo "   0 4 1 * * /usr/local/bin/monthly-backup.sh  (1st of month 4:00 AM)"
echo

# Backup verification
echo "10. Verifying Backups"
echo "    Test tar extraction:"
echo "    $ tar -tzf backup.tar.gz | head -20  (List contents)"
echo "    $ tar -xzf backup.tar.gz -C /tmp --strip-components=1"
echo "    (Extract sample to verify)"
echo
echo "    Verify checksums:"
echo "    $ md5sum backup.tar.gz > backup.tar.gz.md5"
echo "    $ md5sum -c backup.tar.gz.md5  (Verify later)"
echo
echo "    Check disk space for backup:"
echo "    $ du -sh /path  (Size of directory)"
echo "    $ df -h  (Available disk space)"
echo

# Backup to external drive
echo "11. Backup to External Drive"
echo "    Mount external drive:"
echo "    $ sudo mkdir -p /mnt/backup"
echo "    $ sudo mount /dev/sdX1 /mnt/backup"
echo
echo "    Backup to external:"
echo "    $ tar -czf /mnt/backup/backup.tar.gz /important/data"
echo "    $ rsync -av /home /mnt/backup/"
echo
echo "    Unmount after backup:"
echo "    $ sudo umount /mnt/backup"
echo

# Remote backups
echo "12. Remote Backups over SSH"
echo "    Backup to remote server:"
echo "    $ tar -czf - /important/data | ssh user@host 'cat > /backup/backup.tar.gz'"
echo
echo "    Using rsync over SSH:"
echo "    $ rsync -av -e ssh /local/data/ user@host:/remote/backup/"
echo
echo "    Download backup from remote:"
echo "    $ rsync -av -e ssh user@host:/remote/backup/ /local/downloads/"
echo

# Backup strategies
echo "13. Backup Strategies"
echo "    Full backup:"
echo "    - Complete copy of all data"
echo "    - Large size, takes long time"
echo "    - Fast restore"
echo
echo "    Incremental backup:"
echo "    - Only changed files since last backup"
echo "    - Small size, fast"
echo "    - Requires full + all incrementals for restore"
echo
echo "    Differential backup:"
echo "    - Changed files since last full backup"
echo "    - Medium size"
echo "    - Requires full + latest differential for restore"
echo

# 3-2-1 backup rule
echo "14. 3-2-1 Backup Rule"
echo "    Keep 3 copies of data:"
echo "    - Original files"
echo "    - At least 1 local backup"
echo "    - At least 1 offsite backup"
echo
echo "    Store on 2 different media types:"
echo "    - Different drive types (HDD, SSD)"
echo "    - Different locations (local, cloud)"
echo
echo "    Keep 1 copy offsite:"
echo "    - Protects against disaster at main location"
echo "    - Physical location (offsite drive)"
echo "    - Cloud storage (AWS, Google Drive, etc.)"
echo

# Recovery procedures
echo "15. Testing Recovery Procedures"
echo "    Regularly test backups:"
echo "    $ tar -tzf backup.tar.gz > /dev/null  (Verify integrity)"
echo "    Extract sample files and verify content"
echo "    Document recovery time objectives (RTO)"
echo "    Document recovery point objectives (RPO)"
echo "    Practice full restore procedures"
echo "    Keep runbook for disaster recovery"
echo

echo "=== Backup and Recovery Summary ==="
echo "Key tools:"
echo "- tar: Create archives"
echo "- rsync: Synchronize directories"
echo "- dd: Disk imaging"
echo "- gzip/bzip2/xz: Compression"
echo "- cron: Schedule automated backups"
echo "Key principles:"
echo "- Regular backups are essential"
echo "- Test your backups"
echo "- Follow 3-2-1 backup rule"
echo "- Automate backup process"
echo "- Keep backups offsite"
echo

################################################################################
