
#!/usr/bin/env bash

# Exercise 1 – Greet
# Goal: greet the person whose name is given as the first argument.

# ./01_greet.sh Ada -> Hello, Ada!
# ./01_greet.sh      -> Hello, stranger!

# Store first argument or stranger
name="${1:-stranger}"

# Print greeting
echo "Hello, $name!"
