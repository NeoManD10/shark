#!/bin/bash

#Autor: Manuel Dios
#version: 1.0.0

__version__="1.0.0"

# Asignamos host y puerto para trabajar

HOST='127.0.0.1'
PORT='8080' 

BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")") #Ruta absoluta del directorio donde esta el script

if [[ ! -d ".server" ]]; 
then
	mkdir -p ".server"  #-p: Si el directorio ya existe, no arroja error y mantiene el mismo directorio
fi

if [[ ! -d "auth" ]]; 
then
	mkdir -p "auth"
fi

trap exit_on_signal_SIGINT SIGINT
trap exit_on_signal_SIGTERM SIGTERM

check_PID="php cloudflared loclx"
for process in ${check_PID}; do
	if [[ $(pidof ${process}) ]]; then
		killall ${process} > /dev/null 2>&1
	fi
done

if [[ $(command -v php) && $(command -v curl) && $(command -v unzip) ]]; then
	echo -e "\n${GREEN}[${WHITE}+${GREEN}]${GREEN} Dependencias instaladas."
else
	pkgs=(php curl unzip)
	for pkg in "${pkgs[@]}"; do
		...
	done
fi

