```bash
#!/bin/bash

# Basic UFW Firewall Configuration
# Allows SSH and denies HTTP traffic

echo "Installing UFW..."

sudo apt update
sudo apt install ufw -y

echo "Configuring firewall..."

# Allow SSH to prevent remote SSH lockout
sudo ufw allow 22/tcp

# Deny HTTP traffic
sudo ufw deny 80/tcp

# Enable UFW
sudo ufw --force enable

echo "Firewall configuration completed."

echo "Current UFW status:"
sudo ufw status verbose
```
