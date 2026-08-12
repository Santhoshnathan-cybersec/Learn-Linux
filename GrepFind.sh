#!/bin/bash
# Grep and Find Commands
# Searching for files and text in Linux

echo "=== Grep and Find Commands ==="

# Create sample files for demo
mkdir -p demo_dir
echo "Hello Linux" > demo_dir/file1.txt
echo "Learning Shell" > demo_dir/file2.txt
echo "Linux is powerful" > demo_dir/file3.txt

# grep - Search text in files
echo "GREP - Searching text:"
echo "grep 'Linux' demo_dir/*.txt"
grep "Linux" demo_dir/*.txt

# grep with -r recursive search
echo ""
echo "Recursive grep:"
echo "grep -r 'Learning' demo_dir/"
grep -r "Learning" demo_dir/

# grep -n show line numbers
echo ""
echo "Grep with line numbers:"
grep -n "Linux" demo_dir/file1.txt

# grep -i case insensitive
echo ""
echo "Case insensitive grep:"
grep -i "LINUX" demo_dir/file1.txt

# find - Search for files
echo ""
echo "FIND - Searching files:"
echo "find demo_dir -name '*.txt'"
find demo_dir -name "*.txt"

# find by type
echo ""
echo "Find directories:"
find demo_dir -type d

# find by size
echo ""
echo "Find files larger than 5 bytes:"
find demo_dir -size +5c

# find and execute command
echo ""
echo "Find and show content:"
find demo_dir -name "*.txt" -exec cat {} \;

# Cleanup
rm -rf demo_dir
echo ""
echo "Demo files cleaned up"
