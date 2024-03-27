#!/bin/bash 
#This script showcases how to print environment variables using shell scripting .
<< 'END_COMMENT' 
Some commonly used env. variables are USER, PATH ,HOME, PWD, HOSTNAME, 
LANG , EDITOR , UID , LANG , SHELL.
END_COMMENT

read -p "Enter an enviroment variable :" var 
echo "Environment:${!var}"
