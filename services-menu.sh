#!/bin/bash

# Function to display the menu
show_menu() {
    echo "1) Option 1" #Listar el contenido de un fichero
    echo "2) Option 2" #Crear un archivo de texto
    echo "3) Option 3" #Comparar dos archivos texto
    echo "4) Option 4" #awk
    echo "5) Option 5" #grep
    echo "6) Exit"
}

# Function to handle the selection
handle_choice() {
    case $1 in
        1)
            echo "You chose Option 1: Listar el contenido de un fichero"
            read -p "ingrese nombre del directorio " Direc1
            echo $Direc1
            cd $Direc1     #o /$Direc1
            ls
            ;;
        2)
            echo "You chose Option 2: Crear un archivo de texto"
            read -p "ingrese nombre del archivo " Arch1
            echo $Arch1
            read -p "ingrese contenido del archivo " Tex1
            echo $Tex1
            echo  $Tex1 > $Arch1

            cat $Arch1
            ;;
        3)
            echo "You chose Option 3: Comparar dos archivos texto"
            read -p "ingrese nombre del archivo 1" CArch1
            echo $CArch1
            read -p "ingrese nombre del archivo 2" CArch2
            echo $CArch2
            ;;
        4)
            echo "You chose Option 4: awk"
            ;;
        5)
            echo "You chose Option 5: grep"
            ;;
        6)
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
