#!/bin/bash

# Ask the user a question
echo "What is the capital of France?"
echo "1. Berlin"
echo "2. Madrid"
echo "3. Paris"
echo "4. Rome"

# Read the user's input
read -p "Enter the number corresponding to your answer: " answer

# Use conditional statements to check the answer
if [ "$answer" -eq 3 ]; then
    echo "Correct! The capital of France is Paris."
elif [ "$answer" -eq 1 ] || [ "$answer" -eq 2 ] || [ "$answer" -eq 4 ]; then
    echo "Incorrect. The correct answer is Paris."
else
    echo "Invalid input. Please enter a number between 1 and 4."
fi

# Other Numeric Comparison Operators:

# -ne : Not equal to.

# -lt : Less than.

# -le : Less than or equal to.

# -gt : Greater than.

# -ge : Greater than or equal to.


