#!/bin/bash#!/bin/bash

# Print positional parameters 1-9
echo "Positional parameters 1-9:"
for i in {1..9}; do
    echo "$$i: ${!i}"
done

# Print positional parameters after 9
echo "Positional parameters after 9:"
for i in {10..$#}; do
    echo "$$i: ${!i}"
done

# Print script name
echo "Script name: $0"

# Print all arguments as a single string
echo "All arguments as a single string: $*"

# Print all arguments as a single string, with quotes
echo "All arguments as a single string, with quotes: \"$*\""

# Print all arguments separately
echo "All arguments separately: $@"

# Print total number of arguments
echo "Total number of arguments: $#"

# Print PID of the script
echo "PID of the script: $$"

# Print last return code
echo "Last return code: $?"


