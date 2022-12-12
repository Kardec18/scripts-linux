# PT: Esse script irá analisar quantos group root ou user root tem no servidor.
# EN: This script will analyse how many group root or user root have on server.

#!/bin/bash

case $1 in

group_root)
sudo getent passwd | cut -d : -f 1 | xargs groups | grep root | wc -l
;;

user_root)
getent passwd 0 | wc -l
;;

esac
