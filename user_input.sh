#!/bin/bash
#User Input Learning Script 
#add user 
echo "********Add User tester**************"
sudo useradd -c "This is a test user" $1
echo "!!!!!!!!!$1 user created succesfully" 
echo "Checking For $1 user"
cat /etc/passwd | grep "tester"
