#!/bin/bash

# This creates an account on the local system 
# You will prompt for the account name and password 

# Ask for the user name 
read -p 'Enter the username to create: ' USER_NAME

# Ask for the real name 
read -p 'Enter the name of the person: ' COMMENT

# Ask for the password 
read -p 'Enter the password to use for the account: ' PASSWORD 

# Create the user
# -c for commenting -m for creating a home directory 
useradd -c "${COMMENT}" -m ${USER_NAME} 

# set the password for user 
# piping the output of echo into password for user 'USER_NAME' using --stdin
echo ${PASSWORD} | passwd --stdin ${USER_NAME} 

# force user to reset password on first login 
passwd -e ${USER_NAME} 
