#!/bin/bash

#Display the UID and username of the user executing the script 
#Display if the user is the root user or not 

# Display the UID 
echo "Your UID is ${UID}"

# Display the username

# Display if the user is the root user or not

USER_NAME=`id -un`
echo "User name is $USER_NAME "	

# Display if the user is the root user or not 

if [[ "${UID}" -eq 0 ]]
then 
	echo 'You are Root'
else
	echo 'You are not Root'
fi

if [[ "${UID}" -ne 1000 ]]
then 
	echo "Your UID does not match 1000"
	exit 1
fi

if[[ "${?}" -ne 0 ]]
then 
	echo 'The id command did not execute successfully'
	exit 1
fi 
echo "your username is ${USER_NAME}"