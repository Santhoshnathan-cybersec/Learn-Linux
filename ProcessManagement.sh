#!/bin/bash

################################################################################
# ProcessManagement.sh - Linux Process Management
#
# This script explains process management in Linux.
# A process is a running instance of a program. Linux is a multitasking OS
# that can run many processes simultaneously. Understanding process management
# is essential for system administration, troubleshooting, and optimization.
#
# Key concepts covered:
# - Process ID (PID) and Parent Process ID (PPID)
# - Process states (running, sleeping, stopped, zombie)
# - Viewing processes (ps, top, htop)
# - Controlling processes (bg, fg, jobs)
# - Terminating processes (kill)
# - Process priorities (nice, renice)
################################################################################

echo "=== Linux Process Management ==="
echo

# What are processes?
echo "1. What is a Process?"
echo "   A process is a running instance of a program"
echo "   Each process has:"
echo "   - PID (Process ID) - Unique identifier"
echo "   - PPID (Parent Process ID) - Process that created it"
echo "   - User - Who owns the process"
echo "   - Priority - How much CPU time it gets"
echo "   - State - Running, sleeping, stopped, zombie"
echo

# ps - List processes
echo "2. ps - List Running Processes"
echo "   Basic usage:"
echo "   $ ps"
ps
echo
echo "   Detailed output:"
echo "   $ ps aux (Show all processes with details)"
echo "   $ ps -ef  (Alternative format for all processes)"
echo
echo "   Columns explained:"
echo "   USER - Process owner"
echo "   PID  - Process ID"
echo "   %CPU - CPU usage percentage"
echo "   %MEM - Memory usage percentage"
echo "   STAT - Process state (S=sleeping, R=running, Z=zombie)"
echo "   TIME - CPU time used"
echo "   COMMAND - Command that started the process"
echo

# top - Interactive process monitor
echo "3. top - Interactive Process Monitor"
echo "   $ top"
echo "   Shows real-time system resource usage and processes"
echo "   Interactive commands in top:"
echo "   q - Quit"
echo "   u - Filter by user"
echo "   k - Kill process"
echo "   s - Change refresh speed"
echo "   Space - Refresh immediately"
echo "   M - Sort by memory usage"
echo "   P - Sort by CPU usage"
echo

# Viewing specific processes
echo "4. Viewing Specific Processes"
echo "   $ ps aux | grep processname"
echo "   $ pgrep processname  (Get PID of process)"
echo "   $ pidof processname  (Alternative to pgrep)"
echo "   $ ps -u username  (Show processes for specific user)"
echo "   $ ps -p PID  (Show details for specific PID)"
echo

# Process states
echo "5. Process States"
echo "   R - Running (actively executing)"
echo "   S - Sleeping (waiting for input)"
echo "   D - Disk sleep (uninterruptible, I/O)"
echo "   Z - Zombie (process has ended, parent hasn't cleaned up)"
echo "   T - Stopped (paused by signal)"
echo "   L - Memory page lock"
echo

# Background and Foreground processes
echo "6. Foreground and Background Processes"
echo "   Foreground - Command you just typed (blocks terminal)"
echo "   Background - Process runs, terminal is free"
echo
echo "   Starting a process in background:"
echo "   $ command &"
echo "   $ ./script.sh &"
echo

# jobs - List active jobs
echo "7. jobs - List Active Jobs"
echo "   $ jobs"
echo "   Lists all processes started from current shell"
echo "   $ jobs -l  (Show with PIDs)"
echo "   $ jobs -r  (Show only running jobs)"
echo "   $ jobs -s  (Show only stopped jobs)"
echo

# fg - Bring to foreground
echo "8. fg - Bring Process to Foreground"
echo "   $ fg %1  (Bring job 1 to foreground)"
echo "   $ fg     (Bring most recent job to foreground)"
echo "   To do this, process must be running in background"
echo

# bg - Resume in background
echo "9. bg - Resume Process in Background"
echo "   If you stopped a process with Ctrl+Z:"
echo "   $ bg %1  (Resume job 1 in background)"
echo "   $ bg     (Resume most recent stopped job)"
echo

# Pausing processes
echo "10. Pausing and Resuming Processes"
echo "    Ctrl+Z - Suspend current foreground process"
echo "    $ fg - Bring it back to foreground"
echo "    $ bg - Continue in background"
echo

# kill - Terminate processes
echo "11. kill - Terminate Processes"
echo "    $ kill PID  (Terminate process)"
echo "    $ kill -9 PID  (Force kill)"
echo "    $ kill -KILL PID  (Alternative force kill)"
echo "    $ kill -TERM PID  (Graceful termination, default)"
echo
echo "    Signal numbers:"
echo "    1 (HUP)  - Hangup, restart"
echo "    9 (KILL) - Force kill, cannot be caught"
echo "    15 (TERM) - Termination, can be caught"
echo "    19 (STOP) - Stop/suspend process"
echo "    18 (CONT) - Continue stopped process"
echo

# killall and pkill
echo "12. killall and pkill - Kill by Process Name"
echo "    $ killall processname  (Kill all processes with name)"
echo "    $ killall -9 processname  (Force kill all)"
echo "    $ pkill processname  (Kill processes matching pattern)"
echo "    $ pkill -u username  (Kill all processes of user)"
echo

# Process priority
echo "13. nice - Process Priority"
echo "    Priority range: -20 (highest) to 19 (lowest)"
echo "    Default priority: 0"
echo "    Higher negative = higher priority (more CPU time)"
echo
echo "    Starting process with priority:"
echo "    $ nice -n 10 command  (Start with lower priority)"
echo "    $ nice -n -5 command  (Start with higher priority, needs sudo)"
echo

# renice - Change priority
echo "14. renice - Change Process Priority"
echo "    $ renice 10 -p PID  (Set priority to 10)"
echo "    $ renice -5 -p PID  (Set higher priority)"
echo "    $ renice 0 -u username  (Change all processes of user)"
echo

# Process tree
echo "15. pstree - Show Process Hierarchy"
echo "    $ pstree"
echo "    $ pstree -p  (Show with PIDs)"
echo "    Shows parent-child relationships between processes"
echo

echo "=== Process Management Summary ==="
echo "Key takeaways:"
echo "- Every process has a PID, PPID, owner, and state"
echo "- Use ps and top to view processes"
echo "- Use kill to terminate processes"
echo "- Use nice/renice to adjust priorities"
echo "- Use bg/fg to manage foreground/background processes"
echo

################################################################################
