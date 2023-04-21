#!/bin/bash

# Creation des variables
username=""
password=""
# cut -d , -f 3 arranged_students.csv 
# cut -d , -f 5 arranged_students.csv | cut -c 1
# cut -d , -f 2 arranged_students.csv

# Lecture des etudiants
students=$(cat arranged_students.csv)
echo $students

#Creation des users
for st in $students
    do 
        password=$(echo $st | cut -d , -f 2 )
        nom=$(echo $st | cut -d , -f 3)
        premierChar=$(echo $st | cut -d , -f 5 | cut -c 1)
        username=$(echo "$nom$premierChar")
         echo "-------------------------------------"
            echo "User : $username | Password: $password"
            userdel $username
        # Creation d'un user
        #sudo useradd -p $(openssl passwd -1 $password)  $username
        # Ajout dans le groupe sudo
        #sudo usermod -aG sudo $username
    done