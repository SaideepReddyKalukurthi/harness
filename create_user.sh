#!/bin/bash
user_name=$1
home_dir_false=$2

cat /etc/passwd | grep $user_name
if [ $? -ne 0 ]
then
        useradd $user_name
else
        echo "user ${user_name} already exists"
fi
