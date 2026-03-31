#!/bin/bash
# Script 4: Log File Analyzer
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Reads a log file, counts keyword matches, shows last 5 matches
# Usage: ./script4.sh /var/log/syslog error

# --- Accept log file and keyword as command-line arguments ---
LOGFILE=$1
KEYWORD=${2:-"error"}    # Default to 'error' if no keyword given
COUNT=0                  # Initialize counter variable

# --- Validate that a file path was provided ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    echo "Example: $0 /var/log/syslog error"
    exit 1
fi

# --- Retry loop: keep asking for a valid file if not found (do-while style) ---
ATTEMPTS=0
while [ ! -f "$LOGFILE" ]; do
    ATTEMPTS=$((ATTEMPTS + 1))

    # After 3 failed attempts, exit to avoid infinite loop
    if [ $ATTEMPTS -ge 3 ]; then
        echo "Error: Could not find a valid log file after 3 attempts. Exiting."
        exit 1
    fi

    echo "Error: File '$LOGFILE' not found. Please enter a valid log file path:"
    read LOGFILE    # Ask user for a new path
done

echo "Analyzing: $LOGFILE"
echo "Keyword  : '$KEYWORD'"
echo ""

# --- While-read loop: read file line by line ---
while IFS= read -r LINE; do
    # If the line contains the keyword (case-insensitive), increment counter
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary result ---
echo "========================================"
echo "  Keyword '$KEYWORD' found $COUNT times"
echo "========================================"
echo ""

# --- Print last 5 matching lines for context ---
echo "Last 5 matching lines:"
echo "------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
