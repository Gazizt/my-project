#!/bin/bash

echo "================================"
echo "   SYSTEM HEALTH CHECK REPORT"
echo "   $(date)"
echo "================================"

# Check disk space
echo ""
echo "--- Disk Space ---"
DISK=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk used: $DISK"

# Check memory
echo ""
echo "--- Memory Usage ---"
FREE=$(free -h | awk 'NR==2 {print $3}')
TOTAL=$(free -h | awk 'NR==2 {print $2}')
echo "Memory: $FREE used out of $TOTAL"

# Check CPU load
echo ""
echo "--- CPU Load ---"
CPU=$(uptime | awk '{print $10}')
echo "CPU load average: $CPU"

# Check running processes
echo ""
echo "--- Top 5 processes ---"
ps aux --sort=-%cpu | awk 'NR<=6 {print $1, $2, $3"%", $11}' | column -t

# Check if Git is installed
echo ""
echo "--- Checking tools ---"
for TOOL in git nano curl wget python3; do
    if command -v $TOOL &>/dev/null; then
        echo "$TOOL: ✅ installed"
    else
        echo "$TOOL: ❌ NOT installed"
    fi
done

echo ""
echo "================================"
echo "   REPORT COMPLETE"
echo "================================"
