#!/bin/bash

# Function to encrypt a file
encrypt_file() {
    local input_file=$1
    local output_file=$2
    local password=$3

    # Encrypt the file using AES-256-CBC
    openssl enc -aes-256-cbc -salt -in "$input_file" -out "$output_file" -pass pass:"$password"
    echo "File '$input_file' has been encrypted to '$output_file'."
}

# Function to decrypt a file
decrypt_file() {
    local input_file=$1
    local output_file=$2
    local password=$3

    # Decrypt the file using AES-256-CBC
    openssl enc -d -aes-256-cbc -in "$input_file" -out "$output_file" -pass pass:"$password"
    echo "File '$input_file' has been decrypted to '$output_file'."
}

# Main script logic
echo "AES Encryption/Decryption Script"
echo "1. Encrypt a file"
echo "2. Decrypt a file"
read -p "Choose an option (1 or 2): " option

if [ "$option" -eq 1 ]; then
    read -p "Enter the path to the file to encrypt: " input_file
    read -p "Enter the output file name: " output_file
    read -sp "Enter the password for encryption: " password
    echo
    encrypt_file "$input_file" "$output_file" "$password"
elif [ "$option" -eq 2 ]; then
    read -p "Enter the path to the file to decrypt: " input_file
    read -p "Enter the output file name: " output_file
    read -sp "Enter the password for decryption: " password
    echo
    decrypt_file "$input_file" "$output_file" "$password"
else
    echo "Invalid option. Exiting."
fi