#!/bin/bash

var=$1
if [[ $# -ne 1 ]]; then
   echo " Please enter a valid argument "
else
   echo "Hello" "$var"
fi
