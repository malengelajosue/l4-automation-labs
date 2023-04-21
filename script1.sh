#!/usr/bin/bash

students=$(cat arranged_students.csv)

for s in $students
do
    
    password=$( echo $s | cut -d, -f 1 )
    name=$( echo $s | cut -d, -f 2)
    firstcaracter=$( echo $s | cut -d, -f 3 | cut -b 1)
    
    username=$(echo $firstcaracter$name)

    echo $password $usernamenewuser
    useradd  -p $(openssl passwd -1  $password) $username
    usermod -aG sudo $username


done