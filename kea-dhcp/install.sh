#!/bin/bash

# Update the package list
sudo apt-get update

# Install the ISC Kea-DHCP server
sudo apt-get install -y kea-dhcp4-server

# Enable the Kea DHCP server to start on boot
sudo systemctl enable kea-dhcp4-server

# Start the Kea DHCP server
sudo systemctl start kea-dhcp4-server

# Check the status of the Kea DHCP server
sudo systemctl status kea-dhcp4-server

echo "ISC Kea-DHCP installation complete. Please configure the server by editing the /etc/kea/kea-dhcp4.conf file."
