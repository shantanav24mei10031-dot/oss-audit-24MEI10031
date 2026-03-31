#!/bin/bash
# Script 1: System Identity Report
# Author: Shantanav Dutta | Reg No: 24MEI10031
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="Shantanav Dutta"        # Your full name
SOFTWARE_CHOICE="Git"             # Chosen open-source software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in human-readable form
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Get distro name
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')   # Get current date and time
HOME_DIR=$HOME                    # Get home directory of current user

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Chosen Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : Git is licensed under GPL v2."
echo "  GPL v2 gives users the freedom to use, study,"
echo "  modify, and distribute the software freely."
echo "================================================"#!/bin/bash
# Script 1: System Identity Report
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="[YOUR NAME]"        # Your full name
SOFTWARE_CHOICE="Git"             # Chosen open-source software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in human-readable form
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Get distro name
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')   # Get current date and time
HOME_DIR=$HOME                    # Get home directory of current user

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Chosen Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : Git is licensed under GPL v2."
echo "  GPL v2 gives users the freedom to use, study,"
echo "  modify, and distribute the software freely."
echo "================================================"#!/bin/bash
# Script 1: System Identity Report
# Author: Shantanav Dutta | Reg No: 24MEI10031
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="[YOUR NAME]"        # Your full name
SOFTWARE_CHOICE="Git"             # Chosen open-source software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in human-readable form
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Get distro name
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')   # Get current date and time
HOME_DIR=$HOME                    # Get home directory of current user

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Chosen Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : Git is licensed under GPL v2."
echo "  GPL v2 gives users the freedom to use, study,"
echo "  modify, and distribute the software freely."
echo "==============================================#!/bin/bash
# Script 1: System Identity Report
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="[YOUR NAME]"        # Your full name
SOFTWARE_CHOICE="Git"             # Chosen open-source software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in human-readable form
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Get distro name
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')   # Get current date and time
HOME_DIR=$HOME                    # Get home directory of current user

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Chosen Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : Git is licensed under GPL v2."
echo "  GPL v2 gives users the freedom to use, study,"
echo "  modify, and distribute the software freely."
echo "================================================"#!/bin/bash
# Script 1: System Identity Report
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Displays system information like a welcome screen

# --- Variables ---
STUDENT_NAME="[YOUR NAME]"        # Your full name
SOFTWARE_CHOICE="Git"             # Chosen open-source software

# --- Collect system info using command substitution ---
KERNEL=$(uname -r)                # Get kernel version
USER_NAME=$(whoami)               # Get current logged-in user
UPTIME=$(uptime -p)               # Get system uptime in human-readable form
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Get distro name
CURRENT_DATE=$(date '+%d %B %Y, %H:%M')   # Get current date and time
HOME_DIR=$HOME                    # Get home directory of current user

# --- Display formatted output ---
echo "================================================"
echo "     Open Source Audit — $STUDENT_NAME"
echo "     Chosen Software   — $SOFTWARE_CHOICE"
echo "================================================"
echo ""
echo "  Distribution : $DISTRO"
echo "  Kernel       : $KERNEL"
echo "  User         : $USER_NAME"
echo "  Home Dir     : $HOME_DIR"
echo "  Uptime       : $UPTIME"
echo "  Date & Time  : $CURRENT_DATE"
echo ""
echo "  License Note : Git is licensed under GPL v2."
echo "  GPL v2 gives users the freedom to use, study,"
echo "  modify, and distribute the software freely."
echo "================================================"
