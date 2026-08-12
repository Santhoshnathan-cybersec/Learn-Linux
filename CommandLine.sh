#!/bin/bash

################################################################################
# CommandLine.sh - Linux Command Line Basics
#
# This script covers basic command line operations and navigation in Linux.
# The command line (terminal/shell) is the text-based interface to your
# operating system. Most Linux professionals work primarily from the command line.
#
# Key concepts covered:
# - Basic navigation commands (cd, pwd, ls)
# - File and directory creation (mkdir, touch)
# - File and directory removal (rm, rmdir)
# - Viewing file contents (cat, less, more)
# - Basic file operations (cp, mv)
################################################################################

echo "=== Linux Command Line Basics ==="
echo

# pwd - Print Working Directory
echo "1. pwd - Print Working Directory"
echo "   Shows the current directory (where you are in the file system)"
echo "   $ pwd"
pwd
echo

# ls - List directory contents
echo "2. ls - List Directory Contents"
echo "   Lists files and directories in the current directory"
echo "   $ ls -l"
ls -l | head -10
echo

# cd - Change Directory
echo "3. cd - Change Directory"
echo "   Navigate between directories"
echo "   $ cd /tmp"
echo "   $ cd ~          (Go to home directory)"
echo "   $ cd ..         (Go to parent directory)"
echo "   $ cd -          (Go to previous directory)"
echo "   $ cd .          (Current directory)"
echo

# mkdir - Make Directory
echo "4. mkdir - Make Directory"
echo "   Create new directories"
echo "   $ mkdir mynewdir"
echo "   $ mkdir -p path/to/nested/dirs  (Create nested directories)"
echo

# touch - Create empty file
echo "5. touch - Create Empty File"
echo "   Create a new empty file or update timestamp of existing file"
echo "   $ touch newfile.txt"
echo "   $ touch file1.txt file2.txt file3.txt  (Create multiple files)"
echo

# cat - Display file contents
echo "6. cat - Display File Contents"
echo "   Concatenate and display file contents"
echo "   $ cat filename.txt"
echo "   $ cat file1.txt file2.txt  (Display multiple files)"
echo

# less and more - View files with pagination
echo "7. less and more - View Files with Pagination"
echo "   Display file contents one screen at a time"
echo "   $ less filename.txt"
echo "   $ more filename.txt"
echo "   In less/more: press SPACE for next page, Q to quit, /word to search"
echo

# cp - Copy files and directories
echo "8. cp - Copy Files and Directories"
echo "   Copy files and directories to new locations"
echo "   $ cp file.txt file_copy.txt"
echo "   $ cp -r directory/ directory_copy/  (Copy entire directory)"
echo

# mv - Move or rename files
echo "9. mv - Move or Rename Files"
echo "   Move files or rename them"
echo "   $ mv oldname.txt newname.txt  (Rename file)"
echo "   $ mv file.txt /path/to/directory/  (Move file to directory)"
echo "   $ mv directory/ newlocation/directory/  (Move directory)"
echo

# rm - Remove files
echo "10. rm - Remove Files and Directories"
echo "    Delete files and directories permanently (be careful!)"
echo "    $ rm filename.txt"
echo "    $ rm file1.txt file2.txt file3.txt  (Remove multiple files)"
echo "    $ rm -r directory/  (Remove directory and its contents)"
echo "    $ rm -f filename.txt  (Force remove without confirmation)"
echo

# rmdir - Remove empty directories
echo "11. rmdir - Remove Empty Directories"
echo "    Remove only empty directories"
echo "    $ rmdir emptydir/"
echo

# grep - Search text
echo "12. grep - Search Text in Files"
echo "    Search for patterns in files"
echo "    $ grep 'search_term' filename.txt"
echo "    $ grep -n 'term' file.txt  (Show line numbers)"
echo "    $ grep -i 'term' file.txt  (Case-insensitive search)"
echo

# Basic wildcards
echo "13. Wildcards - Pattern Matching"
echo "    Use special characters to match multiple files:"
echo "    *      - Matches any characters"
echo "    ?      - Matches single character"
echo "    []     - Matches characters in brackets"
echo "    $ ls *.txt       (List all .txt files)"
echo "    $ ls file?.txt   (List file1.txt, file2.txt, etc.)"
echo "    $ ls file[123].txt  (List file1.txt, file2.txt, file3.txt)"
echo

# Command history and tab completion
echo "14. Useful Terminal Features"
echo "    Up arrow  - Recall previous commands"
echo "    Ctrl+R   - Search command history"
echo "    Tab      - Auto-complete file names and commands"
echo "    Ctrl+C   - Cancel/interrupt current command"
echo "    Ctrl+D   - Exit terminal or end input"
echo

# Combining commands with pipes and redirects
echo "15. Redirects and Pipes (Brief Introduction)"
echo "    >   - Redirect output to file (overwrites file)"
echo "    >>  - Append output to file"
echo "    <   - Redirect file as input"
echo "    |   - Pipe (send output of one command to another)"
echo "    $ ls > filelist.txt     (Save directory listing to file)"
echo "    $ cat file.txt >> backup.txt  (Append file contents)"
echo "    $ ls | grep '.txt'      (List files and filter for .txt files)"
echo

echo "=== Command Line Basics Summary ==="
echo "Mastering these basic commands is essential for Linux proficiency."
echo "Practice using them regularly to become comfortable with the command line."
echo "Remember: always be careful with rm command as it permanently deletes files!"
echo

################################################################################
