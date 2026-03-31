#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Checks if Git is installed and prints package + philosophy info

# --- Define the package to inspect ---
PACKAGE="git"

# --- Check if package is installed using if-then-else ---
if dpkg -l $PACKAGE &>/dev/null || rpm -q $PACKAGE &>/dev/null; then
    echo "✔ $PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"

    # Try dpkg first (Debian/Ubuntu), fall back to rpm (Fedora/RHEL)
    if dpkg -l $PACKAGE &>/dev/null; then
        dpkg -l $PACKAGE | grep -E "^ii" | awk '{print "Version : "$3"\nArch    : "$4"\nDesc    : "$5" "$6" "$7}'
    else
        rpm -qi $PACKAGE | grep -E 'Version|License|Summary'
    fi
else
    echo "✘ $PACKAGE is NOT installed."
    echo "  Install it with: sudo apt install git"
    echo "               or: sudo dnf install git"
fi

echo ""
echo "--- Open Source Philosophy Notes ---"

# --- Case statement: print philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "Git: Born in 2005 when Linus Torvalds needed a free,"
        echo "     fast, distributed version control system after"
        echo "     BitKeeper revoked free access to the Linux team."
        ;;
    httpd|apache2)
        echo "Apache: The web server that built the open internet,"
        echo "        powering nearly 30% of all websites globally."
        ;;
    mysql)
        echo "MySQL: Open source at the heart of millions of apps,"
        echo "       with an interesting dual-license (GPL + commercial)."
        ;;
    vlc)
        echo "VLC: Built by students in Paris who just wanted to stream"
        echo "     video freely — now plays virtually any media format."
        ;;
    firefox)
        echo "Firefox: A nonprofit's fight to keep the web open,"
        echo "         free, and not controlled by a single corporation."
        ;;
    *)
        # Default case if package name doesn't match any known entry
        echo "$PACKAGE: An open-source tool contributing to the FOSS ecosystem."
        ;;
esac
