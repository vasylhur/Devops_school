#!/bin/bash
echo "Write directory in which you want to change owner   "
read var2
echo "Who will be new owner? "
read var1
if id -u $var1 >/dev/null 2>&1; then
  if [ -d "$var2" ]; then
sudo chown "$var1" "$var2" -R 
echo "Owner changed."
else
  echo "Error:Dir ${var2} not found."
fi
else 
   echo "Error:User $var1 does not exists"
fi



