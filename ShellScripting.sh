#!/bin/bash

################################################################################
# ShellScripting.sh - Shell Scripting Fundamentals
#
# This script explains the basics of shell scripting in Linux.
# Shell scripts are text files containing a sequence of commands that the
# shell (bash) interprets and executes. They automate repetitive tasks,
# combine multiple commands, and are essential for system administration.
#
# Key concepts covered:
# - Shebang line and script execution
# - Variables and data types
# - Command substitution
# - Conditional statements (if/else)
# - Loops (for, while)
# - Functions
# - Input and output
################################################################################

echo "=== Shell Scripting Fundamentals ==="
echo

# Shebang and script creation
echo "1. Shebang Line"
echo "   The first line of a script: #!/bin/bash"
echo "   Tells the system which interpreter to use"
echo "   Must be the very first line in the file"
echo "   Other options:"
echo "   #!/bin/sh (POSIX shell)"
echo "   #!/usr/bin/python3"
echo "   #!/usr/bin/perl"
echo

# Making scripts executable
echo "2. Making Scripts Executable"
echo "   After creating a script file:"
echo "   $ chmod +x script.sh"
echo "   $ chmod 755 script.sh"
echo
echo "   Then run it:"
echo "   $ ./script.sh"
echo "   $ bash script.sh  (Explicit bash)"
echo "   $ sh script.sh"
echo

# Variables
echo "3. Variables - Storing Data"
echo "   Creating variables:"
echo "   VARIABLE=value"
echo "   VAR2='string with spaces'"
echo "   VAR3=\"string with \$VARIABLE interpolation\""
echo
echo "   Using variables:"
echo "   \$VARIABLE or \${VARIABLE}"
echo "   Usage: echo \$VARIABLE"
echo
echo "   Variable naming rules:"
echo "   - Start with letter or underscore"
echo "   - Contain letters, numbers, underscores"
echo "   - Case sensitive (VAR, Var, var are different)"
echo "   - No spaces around = sign"
echo

# Special variables
echo "4. Special Variables"
echo "   \$0 - Script name"
echo "   \$1, \$2, \$3... - Command line arguments"
echo "   \$* - All arguments as one string"
echo "   \$@ - All arguments as separate items"
echo "   \$# - Number of arguments"
echo "   \$? - Exit status of last command (0=success)"
echo "   \$$ - Process ID of script"
echo "   \$USER - Current username"
echo "   \$HOME - Home directory"
echo "   \$PWD - Current directory"
echo

# Command substitution
echo "5. Command Substitution"
echo "   Get output of a command into a variable:"
echo "   RESULT=\$(command)"
echo "   RESULT=\`command\`  (Old syntax, still works)"
echo
echo "   Examples:"
echo "   TODAY=\$(date +%Y-%m-%d)"
echo "   HOSTNAME=\$(hostname)"
echo "   FILES=\$(ls *.txt)"
echo "   FILE_COUNT=\$(ls -1 | wc -l)"
echo

# Arithmetic
echo "6. Arithmetic Operations"
echo "   Using \$((expression)):"
echo "   RESULT=\$((5 + 3))"
echo "   COUNT=\$((COUNT + 1))"
echo "   HALF=\$((100 / 2))"
echo
echo "   Supported operators:"
echo "   + - * / % (addition, subtraction, multiply, divide, modulo)"
echo "   ++ -- (increment, decrement)"
echo

# String operations
echo "7. String Operations"
echo "   String length:"
echo "   LEN=\${#STRING}"
echo
echo "   Substring:"
echo "   PART=\${STRING:0:5}  (First 5 characters)"
echo "   PART=\${STRING:5}    (From character 5 onward)"
echo
echo "   String replacement:"
echo "   NEW=\${STRING/old/new}  (Replace first occurrence)"
echo "   NEW=\${STRING//old/new} (Replace all occurrences)"
echo

# Conditional statements (if/else)
echo "8. Conditional Statements (if/else)"
echo "   Basic structure:"
echo "   if [ condition ]; then"
echo "     commands"
echo "   elif [ condition ]; then"
echo "     commands"
echo "   else"
echo "     commands"
echo "   fi"
echo
echo "   File tests:"
echo "   -f FILE  Test if file exists"
echo "   -d FILE  Test if directory exists"
echo "   -r FILE  Test if file is readable"
echo "   -w FILE  Test if file is writable"
echo "   -x FILE  Test if file is executable"
echo "   -s FILE  Test if file size > 0"
echo
echo "   String tests:"
echo "   -z STRING    Test if string is empty"
echo "   -n STRING    Test if string is not empty"
echo "   STR1 = STR2  Test if strings are equal"
echo "   STR1 != STR2 Test if strings are not equal"
echo
echo "   Numeric tests:"
echo "   NUM1 -eq NUM2  Equal"
echo "   NUM1 -ne NUM2  Not equal"
echo "   NUM1 -lt NUM2  Less than"
echo "   NUM1 -le NUM2  Less than or equal"
echo "   NUM1 -gt NUM2  Greater than"
echo "   NUM1 -ge NUM2  Greater than or equal"
echo

# Loops - for
echo "9. for Loop"
echo "   Loop through a list:"
echo "   for ITEM in item1 item2 item3; do"
echo "     echo \$ITEM"
echo "   done"
echo
echo "   Loop through files:"
echo "   for FILE in *.txt; do"
echo "     echo \$FILE"
echo "   done"
echo
echo "   Loop through range:"
echo "   for i in {1..5}; do"
echo "     echo \$i"
echo "   done"
echo
echo "   C-style loop:"
echo "   for ((i=1; i<=5; i++)); do"
echo "     echo \$i"
echo "   done"
echo

# Loops - while
echo "10. while Loop"
echo "    Loop while condition is true:"
echo "    while [ condition ]; do"
echo "      commands"
echo "    done"
echo
echo "    Example:"
echo "    COUNT=1"
echo "    while [ \$COUNT -le 5 ]; do"
echo "      echo \$COUNT"
echo "      COUNT=\$((COUNT + 1))"
echo "    done"
echo

# Functions
echo "11. Functions"
echo "    Define a function:"
echo "    function_name() {"
echo "      commands"
echo "      return value  (optional)"
echo "    }"
echo
echo "    Call a function:"
echo "    function_name"
echo "    function_name arg1 arg2"
echo
echo "    Access function arguments:"
echo "    \$1, \$2, ... for parameters"
echo "    \$# for number of arguments"
echo

# Input and output
echo "12. Input and Output"
echo "    Reading user input:"
echo "    read VARIABLE"
echo "    read -p 'Prompt: ' VARIABLE"
echo
echo "    Output:"
echo "    echo 'text'  (Print with newline)"
echo "    echo -n 'text'  (Print without newline)"
echo "    echo -e 'text\\nmore'  (Interpret escape sequences)"
echo

# Input redirection
echo "13. Input/Output Redirection"
echo "    Redirect output to file:"
echo "    command > file      (Overwrite)"
echo "    command >> file     (Append)"
echo
echo "    Redirect input from file:"
echo "    command < file"
echo
echo "    Redirect errors:"
echo "    command 2> errors.txt"
echo "    command 2>&1        (Combine stdout and stderr)"
echo

# Exit status and error handling
echo "14. Exit Status and Error Handling"
echo "    Check if command succeeded:"
echo "    if command; then"
echo "      echo 'Success'"
echo "    else"
echo "      echo 'Failed'"
echo "    fi"
echo
echo "    Exit with status:"
echo "    exit 0  (Success)"
echo "    exit 1  (Error)"
echo
echo "    Check previous command:"
echo "    command"
echo "    if [ \$? -eq 0 ]; then"
echo "      echo 'Success'"
echo "    fi"
echo

# Script template
echo "15. Simple Script Template"
echo "    #!/bin/bash"
echo "    # Script description here"
echo
echo "    # Function to display usage"
echo "    usage() {"
echo "      echo 'Usage: \$0 [option]'"
echo "      exit 1"
echo "    }"
echo
echo "    # Main script starts here"
echo "    if [ \$# -eq 0 ]; then"
echo "      usage"
echo "    fi"
echo
echo "    echo \"Processing: \$1\""
echo "    exit 0"
echo

echo "=== Shell Scripting Summary ==="
echo "Key takeaways:"
echo "- Scripts start with #!/bin/bash"
echo "- Use variables to store data"
echo "- Use conditionals to make decisions"
echo "- Use loops to repeat actions"
echo "- Use functions to organize code"
echo "- Check exit status for error handling"
echo

################################################################################
