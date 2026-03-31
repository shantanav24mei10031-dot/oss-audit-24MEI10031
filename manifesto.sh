#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: [YOUR NAME] | Reg No: [YOUR REG NO]
# Course: Open Source Software
# Description: Asks 3 questions and generates a personal open source manifesto

# Note: An alias like 'alias show_manifesto="cat manifesto_$(whoami).txt"'
# could be used to quickly view the manifesto after generation.

echo "================================================"
echo "     Open Source Manifesto Generator"
echo "================================================"
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username for filename ---
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# --- Compose manifesto paragraph using string concatenation ---
echo ""
echo "Generating your manifesto..."
echo ""

# Write the manifesto to a file using > (overwrite) and >> (append)
echo "================================================" > $OUTPUT
echo "  MY OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "  Generated on: $DATE" >> $OUTPUT
echo "  By: $(whoami)" >> $OUTPUT
echo "================================================" >> $OUTPUT
echo "" >> $OUTPUT
echo "Every day, I rely on $TOOL — a tool built not for profit," >> $OUTPUT
echo "but for people. It was created by developers who believed" >> $OUTPUT
echo "that software, like knowledge, should be free." >> $OUTPUT
echo "" >> $OUTPUT
echo "To me, freedom means $FREEDOM. That is why I believe in" >> $OUTPUT
echo "open source — because it gives every person the freedom" >> $OUTPUT
echo "to use, study, modify, and share the tools they depend on." >> $OUTPUT
echo "" >> $OUTPUT
echo "One day, I will build $BUILD and share it freely with the" >> $OUTPUT
echo "world — just as others have done for me. Because the best" >> $OUTPUT
echo "way to honour those who gave freely is to give freely in return." >> $OUTPUT
echo "" >> $OUTPUT
echo "================================================" >> $OUTPUT

# --- Display the saved manifesto ---
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
