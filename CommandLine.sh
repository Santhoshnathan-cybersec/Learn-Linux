#!/bin/bash
# Basic Linux Commands
# These are fundamental commands you'll use daily

echo "=== Basic Linux Commands ==="

# pwd - Print working directory
echo "Current directory:"
pwd

# echo - Print text to screen
echo "Hello Linux Learner"

# ls - List files
echo ""
echo "Listing files:"
ls

# mkdir - Create directory
echo ""
echo "Creating a test directory:"
mkdir -p test_dir 2>/dev/null
ls -d test_dir

# touch - Create empty file
echo ""
echo "Creating a test file:"
touch test_file.txt
ls test_file.txt

# cat - Display file content
echo ""
echo "File content:"
cat test_file.txt

# rm - Remove files
rm -f test_file.txt test_dir -r 2>/dev/null
echo "Cleaned up test files"
