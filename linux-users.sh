#!/bin/bash
for user in $(cat /home/bob/users.txt)
do
  echo "$user is a Linux user." >> /home/bob/userlist.txt
done