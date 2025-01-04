#!/bin/bash

#Autor: Manuel Dios
#version: 1.0.0

__version__="1.0.0"

# Asignamos host y puerto para trabajar

HOST='127.0.0.1'
PORT='8080' 

BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")") #Ruta absoluta del directorio donde esta el script

#Crear directorios al momento de la ejecucion

if [[ ! -d ".servidor" ]]; 
then
    mkdir -p ".servidor"  #-p: Si el directorio ya existe, no arroja error y mantiene el mismo directorio
fi

if [[ ! -d "auth" ]]; 
then
    mkdir -p "auth"
fi

if [[ -d ".server/www"]];
then
    rm -rf ".server/www"
	mkdir -p ".server/www"
else
    mkdir -p ".server/www"
fi

