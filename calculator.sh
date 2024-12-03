#!/bin/bash

# Ask for the first number
echo "Enter first number: "
read num1

# Ask for the second number
echo "Enter second number: "
read num2

# Ask for the operation
echo "Choose operation: + - * /"
read op

# Handle the operation using the case statement
case $op in
    +)  # If the user entered "+"
        result=$((num1 + num2))  # Perform addition
        ;;
    -)  # If the user entered "-"
        result=$((num1 - num2))  # Perform subtraction
        ;;
    \*)  # If the user entered "*"
        result=$((num1 * num2))  # Perform multiplication
        ;;
    /)  # If the user entered "/"
        result=$((num1 / num2))  # Perform division
        ;;
    *)  # If the user entered an invalid operator
        echo "Invalid operation."  # Print error message
        exit 1  # Exit the script with error code 1
        ;;
esac

# Print the result if operation was valid
echo "Result: $result"

