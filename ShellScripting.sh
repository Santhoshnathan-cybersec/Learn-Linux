#!/bin/bash
# Shell Scripting Basics
# Automating tasks with bash scripts

echo "=== Shell Scripting Basics ==="

# Variables
echo "Variables:"
NAME="Linux"
echo "Hello $NAME"

# Command substitution
echo ""
echo "Command substitution:"
CURRENT_DATE=$(date)
echo "Current date: $CURRENT_DATE"

# If-else conditions
echo ""
echo "If-else example:"
AGE=20
if [ $AGE -ge 18 ]; then
    echo "You are an adult"
else
    echo "You are a minor"
fi

# Loops - For loop
echo ""
echo "For loop:"
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# While loop
echo ""
echo "While loop:"
counter=1
while [ $counter -le 3 ]; do
    echo "Count: $counter"
    ((counter++))
done

# Functions
echo ""
echo "Functions:"
greet() {
    echo "Hello $1!"
}
greet "Learner"

# Arrays
echo ""
echo "Arrays:"
fruits=("Apple" "Banana" "Orange")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
