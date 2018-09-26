#!/bin/bash

### Colored Text Output  ###
WARNING=$(tput setaf 3)
DANGER=$(tput setaf 1)
INFO=$(tput setaf 6)
SUCCESS=$(tput setaf 2)
NORMAL=$(tput sgr0)

printf "${WARNING}\nIniciando stack portainer... \n${NORMAL}"

docker stack deploy --prune -c portainer.yml portainer

if [ "$?" -ne "0" ]; then printf "${DANGER}\n\nOoops... algo salio mal !!\n\n${NORMAL}"; exit 1; fi

