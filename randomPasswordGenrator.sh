#!/bin/bash
echo "Password generator"
read -p "Enter the length of the password - " passwordLength
for ((i=0; i<4; i++)) {
    openssl rand -base64 48 | cut -c1-$passwordLength
}

