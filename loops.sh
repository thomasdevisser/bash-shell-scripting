#! /bin/bash

EMPLOYEES=32
COUNT=1

# Checks if less than or equal to
while [ $COUNT -le $EMPLOYEES ]; do
  echo "Hello employee no. $COUNT"
  COUNT=$(( $COUNT + 1 ))
done

# You can do the same thing with until
until [ $COUNT -gt $EMPLOYEES ]; do
  echo "Hello employee no. $COUNT"
  COUNT=$(( $COUNT + 1 ))
done

# Or with a for loop, with increment to skip some
for (( INDEX=1; INDEX <= $EMPLOYEES; INDEX++ )); do
  if (( $INDEX == 7 )); then
    echo "Hello lucky employee no. $INDEX"
    break
  fi
done