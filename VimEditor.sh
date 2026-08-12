#!/bin/bash

################################################################################
# VimEditor.sh - Vim Text Editor Basics
#
# This script explains the basics of using Vim, a powerful text editor
# commonly used in Linux systems. Vim is ubiquitous on Linux systems and
# is an essential tool for system administrators and developers.
# Though it has a steep learning curve, mastering Vim greatly improves productivity.
#
# Key concepts covered:
# - Vim modes (normal, insert, command, visual)
# - Navigation in normal mode
# - Editing and inserting text
# - Searching and replacing
# - Saving and quitting
# - Basic Vim configuration
################################################################################

echo "=== Vim Text Editor Basics ==="
echo

# What is Vim?
echo "1. What is Vim?"
echo "   Vi Improved (Vim) is a powerful text editor"
echo "   Available on nearly all Unix/Linux systems"
echo "   Modal editor with different modes for different tasks"
echo "   Can be used from terminal over SSH"
echo "   Has steep learning curve but very efficient once learned"
echo

# Starting Vim
echo "2. Starting Vim"
echo "   Create or edit a file:"
echo "   $ vim filename.txt"
echo "   $ vim /path/to/file"
echo "   $ vim +10 file.txt  (Start at line 10)"
echo

# Vim Modes
echo "3. Vim Modes"
echo "   Normal Mode (Command Mode)"
echo "   - Default mode when you open Vim"
echo "   - Navigate and modify text"
echo "   - Press ESC to return to normal mode from other modes"
echo
echo "   Insert Mode"
echo "   - Type and edit text"
echo "   - Enter with: i, I, a, A, o, O"
echo "   - Exit with ESC"
echo
echo "   Visual Mode"
echo "   - Select and manipulate text blocks"
echo "   - Enter with: v (character), V (line), Ctrl+v (block)"
echo "   - Exit with ESC"
echo
echo "   Command-Line Mode"
echo "   - Execute commands (save, quit, search, replace)"
echo "   - Enter with: :"
echo "   - Exit with ESC"
echo

# Entering Insert Mode
echo "4. Entering Insert Mode"
echo "   i - Insert before cursor"
echo "   I - Insert at beginning of line"
echo "   a - Append after cursor"
echo "   A - Append at end of line"
echo "   o - Open new line below"
echo "   O - Open new line above"
echo "   Exit insert mode: ESC"
echo

# Navigation in Normal Mode
echo "5. Navigation in Normal Mode"
echo "   Basic movement:"
echo "   h - Left"
echo "   j - Down"
echo "   k - Up"
echo "   l - Right"
echo
echo "   Word navigation:"
echo "   w - Next word"
echo "   b - Previous word"
echo "   e - End of word"
echo "   ) - Next sentence"
echo "   ( - Previous sentence"
echo
echo "   Line navigation:"
echo "   0 - Beginning of line"
echo "   $ - End of line"
echo "   ^ - First non-blank character"
echo
echo "   File navigation:"
echo "   G - End of file"
echo "   gg - Beginning of file"
echo "   nG - Go to line n (5G goes to line 5)"
echo "   Ctrl+F - Page down"
echo "   Ctrl+B - Page up"
echo

# Editing operations
echo "6. Editing Operations in Normal Mode"
echo "   Delete:"
echo "   x - Delete character"
echo "   dw - Delete word"
echo "   dd - Delete line"
echo "   d$ - Delete to end of line"
echo "   d0 - Delete to beginning of line"
echo "   5dd - Delete 5 lines"
echo
echo "   Copy and Paste:"
echo "   yy - Copy line"
echo "   yw - Copy word"
echo "   p - Paste after cursor"
echo "   P - Paste before cursor"
echo
echo "   Undo and Redo:"
echo "   u - Undo"
echo "   Ctrl+R - Redo"
echo "   u. - Undo multiple times"
echo

# Searching
echo "7. Searching in Vim"
echo "   Search for text:"
echo "   /pattern - Search forward for pattern"
echo "   ?pattern - Search backward for pattern"
echo "   n - Next occurrence"
echo "   N - Previous occurrence"
echo
echo "   Example:"
echo "   /function  (Find 'function')"
echo "   n          (Go to next occurrence)"
echo

# Search and Replace
echo "8. Search and Replace (Command Mode)"
echo "   Basic replace:"
echo "   :s/old/new/ - Replace first occurrence on line"
echo "   :s/old/new/g - Replace all on line"
echo "   :%s/old/new/g - Replace all in file"
echo "   :%s/old/new/gc - Replace all with confirmation"
echo
echo "   Examples:"
echo "   :s/foo/bar/       (Replace first 'foo' with 'bar')"
echo "   :%s/error/bug/g   (Replace all 'error' with 'bug')"
echo "   :1,10s/old/new/g  (Replace in lines 1-10)"
echo

# Saving and Quitting
echo "9. Saving and Quitting (Command Mode)"
echo "   Save:"
echo "   :w - Write/Save file"
echo "   :w! - Force save (overwrite read-only)"
echo "   :w filename - Save as new file"
echo
echo "   Quit:"
echo "   :q - Quit (fails if unsaved changes)"
echo "   :q! - Quit without saving"
echo "   :wq - Save and quit"
echo "   :wq! - Force save and quit"
echo "   ZZ - Save and quit (normal mode shortcut)"
echo "   ZQ - Quit without saving (normal mode shortcut)"
echo

# Selection and Visual Mode
echo "10. Visual Mode (Selection)"
echo "    v - Character selection"
echo "    V - Line selection"
echo "    Ctrl+v - Block/column selection"
echo
echo "    With selection active:"
echo "    d - Delete selected"
echo "    y - Copy selected"
echo "    > - Indent selected"
echo "    < - Unindent selected"
echo "    ~ - Toggle case"
echo

# Copy and paste between vim and system
echo "11. Copy/Paste with System Clipboard"
echo "    Copy to system clipboard:"
echo "    - First select text (visual mode)"
echo "    - Then: \"+y (copy to + register)"
echo
echo "    Paste from system clipboard:"
echo "    - In insert mode: Ctrl+Shift+V"
echo "    - Or: \"+p (in normal mode)"
echo
echo "    Note: Requires Vim compiled with clipboard support"
echo

# Jump and marks
echo "12. Jump and Marks"
echo "    Marks - save positions:"
echo "    ma - Set mark 'a'"
echo "    'a - Go to mark 'a'"
echo "    '' - Go to previous position"
echo
echo "    Jump back and forth:"
echo "    Ctrl+O - Jump to previous location"
echo "    Ctrl+I - Jump to next location"
echo

# Indentation
echo "13. Indentation"
echo "    Indent:"
echo "    >> - Indent current line"
echo "    5>> - Indent 5 lines"
echo "    < - Unindent"
echo
echo "    In visual mode:"
echo "    > - Indent selection"
echo "    < - Unindent selection"
echo

# Useful commands
echo "14. Other Useful Commands"
echo "    :set number - Show line numbers"
echo "    :set nonumber - Hide line numbers"
echo "    :set list - Show special characters (tabs, spaces)"
echo "    :syntax on - Enable syntax highlighting"
echo "    :sp filename - Split window (horizontal)"
echo "    :vsp filename - Split window (vertical)"
echo "    Ctrl+W arrow - Move between windows"
echo "    :e! - Reload file"
echo

# Vim configuration
echo "15. Vim Configuration (.vimrc)"
echo "    Configuration file: ~/.vimrc"
echo "    Example .vimrc settings:"
echo "    set number            (Show line numbers)"
echo "    set tabstop=4         (Tab = 4 spaces)"
echo "    set expandtab         (Use spaces instead of tabs)"
echo "    syntax on             (Enable syntax highlighting)"
echo "    colorscheme desert    (Set color scheme)"
echo "    set relativenumber    (Relative line numbers)"
echo

echo "=== Vim Basics Summary ==="
echo "Essential keys to remember:"
echo "- ESC: Exit to normal mode"
echo "- i: Enter insert mode"
echo "- :: Start command"
echo "- /: Search"
echo "- :w: Save"
echo "- :q: Quit"
echo "- :wq: Save and quit"
echo
echo "Practice is key to mastering Vim!"
echo

################################################################################
