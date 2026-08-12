#!/bin/bash

################################################################################
# GrepFind.sh - Search and Find Operations in Linux
#
# This script explains how to search for files and text in Linux.
# Finding files and searching text is one of the most common tasks
# in Linux. Mastering grep, find, and related tools dramatically
# improves your ability to work efficiently with files and data.
#
# Key concepts covered:
# - find: Search for files by name, type, size, date, etc.
# - grep: Search for text patterns in files
# - locate: Fast file search (uses database)
# - Advanced search patterns and options
################################################################################

echo "=== Search and Find Operations in Linux ==="
echo

# find command basics
echo "1. find - Search for Files"
echo "   Basic syntax:"
echo "   $ find /path [options] [criteria]"
echo
echo "   Find by name:"
echo "   $ find . -name 'filename.txt'"
echo "   $ find /home -name '*.txt'  (All .txt files)"
echo "   $ find . -name 'test*'  (Start with 'test')"
echo
echo "   Case-insensitive search:"
echo "   $ find . -iname 'File.TXT'  (Finds file.txt, FILE.TXT, etc.)"
echo

# find by type
echo "2. find - Search by File Type"
echo "   $ find . -type f  (Regular files)"
echo "   $ find . -type d  (Directories)"
echo "   $ find . -type l  (Symbolic links)"
echo "   $ find . -type s  (Sockets)"
echo "   $ find . -type p  (Named pipes)"
echo "   $ find . -type b  (Block devices)"
echo "   $ find . -type c  (Character devices)"
echo

# find by size
echo "3. find - Search by File Size"
echo "   $ find . -size 100c  (Exactly 100 bytes)"
echo "   $ find . -size +1M  (Larger than 1 MB)"
echo "   $ find . -size -10k  (Smaller than 10 KB)"
echo "   $ find . -size 100M  (Around 100 MB)"
echo
echo "   Size units:"
echo "   c = bytes, k = kilobytes, M = megabytes, G = gigabytes"
echo

# find by date/time
echo "4. find - Search by Date and Time"
echo "   Modified time:"
echo "   $ find . -mtime 7  (Modified 7 days ago)"
echo "   $ find . -mtime -7  (Modified within last 7 days)"
echo "   $ find . -mtime +7  (Modified more than 7 days ago)"
echo "   $ find . -mmin -30  (Modified within last 30 minutes)"
echo
echo "   Accessed time:"
echo "   $ find . -atime 7  (Accessed 7 days ago)"
echo "   $ find . -atime -7  (Accessed within last 7 days)"
echo
echo "   Changed time (metadata):"
echo "   $ find . -ctime 7  (Changed 7 days ago)"
echo

# find with actions
echo "5. find - Execute Actions on Results"
echo "   Execute command on each file:"
echo "   $ find . -name '*.log' -exec rm {} \\;"
echo "   $ find . -type f -exec chmod 644 {} \\;"
echo "   $ find . -name '*.bak' -delete"
echo
echo "   {} = replaced with filename"
echo "   \\; = terminates the command"
echo "   -delete = delete matching files"
echo

# find multiple criteria
echo "6. find - Combining Multiple Criteria"
echo "   AND (both conditions):"
echo "   $ find . -name '*.txt' -size +1k  (AND is default)"
echo
echo "   OR (either condition):"
echo "   $ find . -name '*.txt' -o -name '*.log'"
echo
echo "   NOT (negate condition):"
echo "   $ find . -not -name '*.txt'"
echo "   $ find . ! -name '*.txt'  (Alternative)"
echo

# grep command basics
echo "7. grep - Search Text in Files"
echo "   Basic syntax:"
echo "   $ grep 'pattern' filename"
echo "   $ grep 'search_term' *.txt"
echo
echo "   Search in multiple files:"
echo "   $ grep 'pattern' file1.txt file2.txt"
echo "   $ grep -r 'pattern' /path/  (Recursive)"
echo "   $ grep -r 'pattern' ."
echo

# grep options
echo "8. grep - Useful Options"
echo "   -i : Case-insensitive search"
echo "   $ grep -i 'ERROR' file.log  (Finds error, Error, ERROR)"
echo
echo "   -n : Show line numbers"
echo "   $ grep -n 'pattern' file.txt"
echo
echo "   -c : Count matching lines"
echo "   $ grep -c 'pattern' file.txt"
echo
echo "   -l : Show only filenames"
echo "   $ grep -l 'pattern' *.txt"
echo
echo "   -v : Invert match (show non-matching)"
echo "   $ grep -v 'pattern' file.txt"
echo
echo "   -A : Show lines after match"
echo "   $ grep -A 3 'pattern' file.txt  (3 lines after)"
echo
echo "   -B : Show lines before match"
echo "   $ grep -B 2 'pattern' file.txt  (2 lines before)"
echo

# grep patterns
echo "9. grep - Regular Expressions (Patterns)"
echo "   Basic patterns:"
echo "   grep 'exact' file  (Exact match)"
echo "   grep '^pattern' file  (Start of line)"
echo "   grep 'pattern$' file  (End of line)"
echo "   grep 'p.ttern' file  (. = any character)"
echo "   grep 'p*ttern' file  (* = 0 or more of previous)"
echo "   grep 'p\\+ttern' file  (\\+ = 1 or more, needs -E or grep -P)"
echo
echo "   Character classes:"
echo "   grep '[aeiou]' file  (Any vowel)"
echo "   grep '[0-9]' file  (Any digit)"
echo "   grep '[^0-9]' file  (Not a digit)"
echo

# egrep and grep -E
echo "10. grep -E or egrep - Extended Regular Expressions"
echo "    Allows more complex patterns:"
echo "    $ grep -E 'pattern1|pattern2' file  (OR)"
echo "    $ grep -E 'p(at|et)tern' file  (Grouping)"
echo "    $ grep -E '^[0-9]+$' file  (Lines with only digits)"
echo "    $ egrep 'pattern' file  (Alternative to grep -E)"
echo

# locate command
echo "11. locate - Fast File Search"
echo "    Uses database (much faster than find)"
echo "    $ locate filename"
echo "    $ locate 'pattern'  (Search with wildcards)"
echo
echo "    Update database:"
echo "    $ sudo updatedb  (Update locate database)"
echo
echo "    Note: locate is faster but requires database"
echo "          find searches in real-time"
echo

# which and whereis
echo "12. which and whereis - Locate Commands"
echo "    which - Show path of command:"
echo "    $ which python"
echo "    $ which -a command  (Show all matches)"
echo
echo "    whereis - Show binary, source, and manual:"
echo "    $ whereis python"
echo "    $ whereis -b python  (Binary only)"
echo "    $ whereis -m python  (Manual only)"
echo

# Combining with pipes
echo "13. Combining grep with Other Tools"
echo "    Pipe to grep to filter:"
echo "    $ ps aux | grep processname"
echo "    $ ls -la | grep '.txt'"
echo "    $ cat file | grep 'pattern'"
echo
echo "    Pipe find to grep:"
echo "    $ find . -type f | grep '.log'"
echo "    $ find . -type f -name '*.sh' | xargs grep 'TODO'"
echo

# Advanced find and grep
echo "14. Advanced Combinations"
echo "    Find all .txt files with specific content:"
echo "    $ grep -r 'searchterm' --include='*.txt' ."
echo
echo "    Find large files modified recently:"
echo "    $ find . -size +100M -mtime -7"
echo
echo "    Find and count occurrences:"
echo "    $ find . -name '*.log' -exec grep -c 'ERROR' {} \\;"
echo

# Practical examples
echo "15. Practical Examples"
echo "    Find all Python files:"
echo "    $ find . -name '*.py'"
echo
echo "    Find all config files:"
echo "    $ find /etc -name '*.conf'"
echo
echo "    Search for TODO comments:"
echo "    $ grep -r 'TODO' --include='*.c' ."
echo
echo "    Find empty directories:"
echo "    $ find . -type d -empty"
echo
echo "    Find files modified in last hour:"
echo "    $ find . -mmin -60"
echo
echo "    Search files containing both 'password' and 'hash':"
echo "    $ grep -l 'password' * | xargs grep 'hash'"
echo

echo "=== Search and Find Summary ==="
echo "Key tools:"
echo "- find: Powerful file search with many criteria"
echo "- grep: Search text in files, supports regex"
echo "- locate: Fast file search using database"
echo "- which: Find command location"
echo "- Combine with pipes (|) and xargs for power"
echo

################################################################################
