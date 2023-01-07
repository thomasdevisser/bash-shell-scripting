#! /bin/bash

# A way to get the amount of arguments provided
echo "You provided $# argument(s)"

# This is how you print the argument at an array index
ARGS=("$@")
echo ${ARGS[0]}

# This is how you print all arguments
ARGS="$@"
echo "$ARGS"

# 1> represents stdout and 2> stderr
# > also represents stdout
lss -la 2>error.txt
ls 1>ls.txt

# These ways the file is used for both output and errors
ls > file.txt 2>&1
ls >& file.txt