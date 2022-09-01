#!/bin/bash
cd /var/www/wordpress
echo "Checking if WordPress is installed..."
if [ -z "$(ls -A .)" ]; then
    echo "WordPress is not installed, installing..."
    mv /wordpress/* /var/www/wordpress/
    wp core install --allow-root --title="Inception Wordpress Site" --admin_name="mhaddi" --admin_password="mhaddi" --admin_email="mhaddi@student.1337.ma" --url="https://localhost/"
else
    echo "WordPress is already installed, skipping..."
fi