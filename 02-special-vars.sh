#!/bin/bash

# shell scripting 

echo "All Args passed to script: $@"
echo "CMD $0"
echo "first Argument $1"
echo " Argument $2"
echo " Argument $3"
echo " Argument $4"
echo " Argument $5"
echo " Argument $6"

#realpath 

echo "Realpath  $(realpath $0)"

#total count of args
echo "Args count : $#"
echo "all args as word $*"

#Pid - process IDs

echo "curent script PID: $$"

sleep 12 &
echo "last background process PID: $!"

echo "Last Exit code $?"

echo "Home Directory $HOME"
echo "User Name : $USER"
echo "Current path : $PWD"
