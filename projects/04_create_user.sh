#!/bin/bash 

<< comment
-=-=-=-=-=-=-=-=-=-=- Requirements -=-=-=-=-=-=-=-=-=-=-=-=-=-=
Script should be executed with root user else exit with status 1 and error message
Script will take 1st argument as user and rest will be treated as comment
Auto generated password for the user

Steps for Scripts: 
1.Check if the script is being executed with superuser privileges
2.If the user doesn't suppy at least one argument, then give them help
3.The First parameter is the username
4.The rest of the parameter are for the comments
5.Generate a password
6.Create the user with the password
7.Check to see if the useradd command succeeded

comment

# Check if the script is being executed with superuser privileges
if [ "${UID}" -ne 0 ]
then
        echo "Please run with sudo or root. "
        exit 1
fi

# If the user doesn't suppy at least one argument, then give them help
if [ "${#}" -lt 1 ]
then
	echo "Usage: ${0} USER_NAME [COMMENT]..."
	echo "Create a user with name USER_NAME and Comments field of COMMENT"
	exit 1 
fi

# The First parameter is the username
USER_NAME="${1}"
 
# In case of more than one argument, store it as account comments
shift
COMMENT="${@}"
echo $COMMENT

# Create a password
PASSWORD=$(date +%s%N)

# Create the user
useradd -c " $COMMENT" -m $USER_NAME


# Check if user is successfully created or not
if [ $? -ne 0 ] 
then 
	echo "The account could not be created."
	exit 1
fi

# Set the password for the user
# echo $PASSWORD | passwd --stdin $USER_NAME
passwd $PASSWORD $USERNAME

# Checkif password is successfully set or not
if [ $? -ne 0 ] 
then 
	echo "Password could not be set"
	exit 1
fi

# Force password change on first login
passwd -e $USER_NAME

# Display the username, password, and the host where the user was created
echo
echo "Username: $USER_NAME"
echo
echo "Password: $PASSWORD"
echo
echo $(hostname)


~                                                                
~      
