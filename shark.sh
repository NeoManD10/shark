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


