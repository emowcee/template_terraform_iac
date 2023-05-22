#!/bin/bash

# Install necessary packages
apt-get update
apt-get install -y apache2

# Start Apache web server
systemctl start apache2
systemctl enable apache2

# Create a simple index.html file
echo "<h1>Welcome to my web server!</h1>" > /var/www/html/index.html
