#! /bin/bash

# A way to get the amount of arguments provided
echo "You provided $# argument(s)"

# This is how you print the argument at an array index
ARGS=("$@")
echo ${ARGS[0]}

# This is how you print all arguments
ARGS="$@"
echo "$ARGS"