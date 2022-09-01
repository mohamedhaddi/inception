#!/bin/bash
echo "Checking if /var/lib/mysql is populated..."
if [ -z "$(ls -A /var/lib/mysql)" ]; then
    echo "/var/lib/mysql is empty, moving files..."
    mv /tmp/mysql/* /var/lib/mysql/
    echo "Moved files to /var/lib/mysql"
else
    echo "/var/lib/mysql is not empty, skipping..."
fi