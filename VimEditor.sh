#!/bin/bash
# Vim Editor in Linux
# Vi is a powerful text editor available on most systems

echo "=== Vim Editor Basics ==="

# Create a sample file
echo "Creating sample file for vim demo..."
cat > vim_demo.txt <<'CONTENT'
This is a sample file for Vim editing
Line 2: Vim has two modes
Line 3: Command mode and Insert mode
CONTENT

# Show file content
echo ""
echo "File content:"
cat vim_demo.txt

# Vim modes
echo ""
echo "Vim Modes:"
echo "1. Command Mode (default) - For navigation and commands"
echo "2. Insert Mode - For editing text (press i to enter)"

# Common commands
echo ""
echo "Common Vim Commands:"
echo "i - Insert mode (before cursor)"
echo "a - Insert after cursor"
echo "o - New line and insert"
echo "x - Delete character"
echo "dd - Delete line"
echo ":w - Save file"
echo ":q - Quit"
echo ":wq - Save and quit"
echo ":q! - Quit without saving"
echo "/pattern - Search"
echo "n - Next match"
echo "yy - Copy line"
echo "p - Paste"

# To open vim
echo ""
echo "To open vim:"
echo "vim filename.txt"
echo "vi filename.txt"

# Cleanup
rm -f vim_demo.txt
echo ""
echo "Demo file removed"
