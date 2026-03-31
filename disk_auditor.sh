#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Loops through system directories and reports permissions and size

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo "       Directory Audit Report"
echo "========================================"
echo ""

# --- For loop: iterate over each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permission string, owner, and group using awk
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')

        # Get directory size, suppress permission errors with 2>/dev/null
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "  Directory : $DIR"
        echo "  Size      : $SIZE"
        echo "  Perms     : $PERMS"
        echo "  Owner     : $OWNER | Group: $GROUP"
        echo "----------------------------------------"
    else
        # Directory doesn't exist on this system
        echo "  $DIR does not exist on this system."
        echo "----------------------------------------"
    fi
done

# --- Bonus: Check Git's config directory specifically ---
echo ""
echo "=== Git Config Directory Check ==="

GIT_CONFIG_DIR="/etc/gitconfig"   # System-wide Git config file

if [ -f "$GIT_CONFIG_DIR" ]; then
    # File exists — show its permissions
    PERMS=$(ls -l "$GIT_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "  Git system config found at: $GIT_CONFIG_DIR"
    echo "  Permissions: $PERMS"
else
    echo "  No system-wide Git config found at $GIT_CONFIG_DIR"
    echo "  (This is normal — Git config is usually per-user at ~/.gitconfig)"
fi
