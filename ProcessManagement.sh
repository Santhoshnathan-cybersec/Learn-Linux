#!/bin/bash
# Understanding Processes in Linux
# A process is a running instance of a program

echo "=== Linux Process Management ==="

# ps - List running processes
echo "Current processes:"
ps

# ps aux - Show all processes with details
echo ""
echo "All processes (first 5):"
ps aux | head -6

# top - Interactive process monitor
echo ""
echo "Top command shows live process info (press q to quit):"
echo "You can run: top"

# pgrep - Search for process by name
echo ""
echo "Find processes by name:"
pgrep bash

# kill - Terminate process
echo ""
echo "kill command usage: kill <PID>"
echo "Example: kill 1234"

# Process states
echo ""
echo "Process states:"
echo "R - Running"
echo "S - Sleeping (waiting)"
echo "Z - Zombie (terminated but waiting for parent)"
echo "T - Stopped"

# Background processes with &
echo ""
echo "Running process in background:"
sleep 100 &
BG_PID=$!
echo "Background process PID: $BG_PID"
kill $BG_PID 2>/dev/null
