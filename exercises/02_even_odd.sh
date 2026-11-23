
#!/usr/bin/env bash
# Exercise 2 – Even or odd
# Goal:
#   ./02_even_odd.sh 4    -> 4 is even
#   ./02_even_odd.sh 7    -> 7 is odd
#   ./02_even_odd.sh      -> "Usage: ..." on stderr, exit code 1
#   ./02_even_odd.sh abc  -> "Error: ..." on stderr, exit code 2
# Hints: [[ $n =~ ^-?[0-9]+$ ]] checks for a whole number.
#        (( n % 2 == 0 )) is true when n is even.
set -euo pipefail

# Check if argument exists
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 NUMBER" >&2
    exit 1
fi

# Check if argument is a whole number
if [[ ! "$1" =~ ^-?[0-9]+$ ]]; then
    echo "Error: '$1' is not a valid integer" >&2
    exit 2
fi

# Check even or odd
n=${1#-}

if (( 10#$n % 2 == 0 )); then
    echo "$1 is even"
else
    echo "$1 is odd"
fi
