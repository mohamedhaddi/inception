#!/bin/bash
cd ${WP_PATH}
echo "Checking if WordPress is installed..."
if [ -z "$(ls -A .)" ]; then
    echo "WordPress is not installed, installing..."
    mv /tmp_files/wordpress/* ${WP_PATH}
    wp core install --allow-root --title="Inception Wordpress Site" --admin_name="${WP_ADMIN}" --admin_password="${WP_ADMIN_PASSWORD}" --admin_email="${WP_ADMIN_EMAIL}" --url="https://localhost/"
else
    echo "WordPress is already installed, skipping..."
fi