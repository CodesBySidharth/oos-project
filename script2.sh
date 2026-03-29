#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l $PACKAGE | grep "^ii"
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for description
case $PACKAGE in
    git) echo "Git: distributed version control system" ;;
    apache2) echo "Apache: web server powering the internet" ;;
    mysql) echo "MySQL: database system" ;;
    firefox) echo "Firefox: open source web browser" ;;
    *) echo "Unknown package" ;;
esac