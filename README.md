# MAC Address and IP Changer

## Overview
This Bash script allows you to change the MAC address and configure a new IP address on a specified network interface (`wlp2s0`). It also restarts the NetworkManager service and updates `iptables` for NAT configurations.

## Prerequisites
Before using this script, ensure you have the following installed:
- `macchanger`
- `iptables`
- `NetworkManager`

### Installation
To install `macchanger`, run:
```bash
sudo apt install macchanger   # For Debian-based systems
sudo dnf install macchanger   # For Fedora-based systems
```

## Usage
Run the script with the desired MAC address and IP address:
```bash
./script.sh <MAC_ADDRESS> <IP_ADDRESS>
```
Example:
```bash
./script.sh 00:1A:2B:3C:4D:5E 192.168.1.100
```

### Options
- `--help`: Displays usage information.

## Input Validation
The script checks:
- The MAC address must be exactly 17 characters long.
- The IP address must be between 10 to 15 characters long (basic validation).
- Both MAC and IP must be provided as arguments.

## Important Notes
- This script modifies network settings, so **run it as root or use `sudo`**.
- Ensure your network interface name is `wlp2s0`. If different, update the script accordingly.
- Changing the MAC address may disrupt active connections.

## Disclaimer
Use this script responsibly and ensure compliance with your network policies and regulations.

