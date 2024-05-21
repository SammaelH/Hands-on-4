#!/bin/bash

# Function to display the menu
show_menu() {
    echo "1) Option 1"
    echo "2) Option 2"
    echo "3) Option 3"
    echo "4) Exit"
}

# Function to handle the selection
handle_choice() {
    case $1 in
        1)
            echo "You chose Option 1"
            ;;
        2)
            echo "You chose Option 2"
            ;;
        3)
            echo "You chose Option 3"
            ;;
        4)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
}

# Main loop
while true; do
    show_menu
    read -p "Please enter your choice: " choice
    handle_choice $choice
    echo ""
done