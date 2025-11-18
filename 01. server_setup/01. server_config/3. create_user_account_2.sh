#Create a Sudo Test Account for Ubuntu Server Management

sudo adduser ansibleadmin # Create a new user named ansibleadmin
sudo usermod -aG sudo ansibleadmin  # Add existing user ansibleadmin to sudo group

su ansibleadmin # Switch to the new user account
sudo cat /etc/sudoers # Verify that ansibleadmin has sudo privileges
sudo ls -la /root # Verify that ansibleadmin can access root directory with sudo
id # Verify the user ID and group ID of ansibleadmin
# End of script
# Make this script executable with: chmod +x create_user_account_2.sh