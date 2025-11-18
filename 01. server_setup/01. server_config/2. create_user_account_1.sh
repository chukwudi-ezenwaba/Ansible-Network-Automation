# Create a new user account named AnsibleAdmin with sudo privileges for Fedora Server Management
#..........................................................................................................................
#!/bin/bash
sudo adduser ansibleadmin # Create a new user named AnsibleAdmin
sudo passwd ansibleadmin # Set the password for the new user

sudo tail -3 /etc/passwd # Verify the user creation by displaying the last 3 lines of /etc/passwd
sudo tail -3 /etc/shadow # Verify the user creation by displaying the last 3 lines of hashed passwords in /etc/shadow

sudo visudo # Edit sudoers file to grant sudo privileges to ansibleadmin
# Add the following line to the sudoers file:
# ansibleadmin ALL=(ALL) ALL

su ansibleadmin # Switch to the new user account
sudo cat /etc/sudoers # Verify that ansibleadmin has sudo privileges
sudo ls -la /root # Verify that ansibleadmin can access root directory with sudo
id # Verify the user ID and group ID of ansibleadmin
# End of script
# Make this script executable with: chmod +x create_user_account_1.sh