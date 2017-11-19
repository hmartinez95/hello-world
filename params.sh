#!/usr/bin/env bash

echo "My name is `basename $0` - I was called as $0"
echo "I was called with $# paramteres."
if [ "$#" -eq "2" ]; then
    # The script was called with exactly two parameters, so lets continue
    echo "My first parameter is: $1"
    echo "My second parameter is: $2"
else
    # The #$ must tell us that we need two parameters
    # If not, we will tell the user how to run the script.
    echo "Usage: `basename $0` first second"
    echo "You provided $# parameters, but 2 are required"
fi
