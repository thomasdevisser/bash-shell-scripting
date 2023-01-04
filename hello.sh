#! /bin/bash

: '
This is a multiline comment.
It is almost never used.
'

# Echoes Hello world to stdout
echo "Hello world"

# Outputs a string to a file
echo "Hello file" > hello.txt

# Appends to a file without overwriting (on a new line)
echo "I appended this text" >> hello.txt

# Variables are uppercase by convention
MINIMUM_AGE=18

if [ $MINIMUM_AGE -eq 18 ]; then
    echo "The minimum age is 18"
else
  echo "The minimum age is not 18"
fi

AGE=28

if (( $AGE >= $MINIMUM_AGE )); then
  echo "You're $AGE, which means you're old enough"
else
  echo "You're $AGE, which means you're too young"
fi

# These are two different ways of writing this statement
# if [ "$AGE" -gt 27 ] && [ "$AGE" -lt 40 ]; then
if [[ "$AGE" -gt 27 && "$AGE" -lt 40 ]]; then
  echo "You're older than me"
elif [ "$AGE" -lt 27 ]; then
  echo "You're younger than me"
else
  echo "You've been an adult for quite some time now"
fi;