# Usar una imagen base ligera de Linux con un servidor web
FROM nginx:latest

# Copiar el archivo index.html al directorio donde Nginx sirve sus archivos
COPY index.html /usr/share/nginx/html/

# Exponer el puerto 80 para el servidor web
EXPOSE 80

# Comando por defecto para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]

#FROM nginx:latest: Usa la última versión de la imagen base de Nginx.
#COPY: Copia el archivo index.html a la carpeta predeterminada de Nginx.
#EXPOSE 80: Indica que el contenedor usará el puerto 80.
#CMD: Especifica el comando que se ejecutará cuando el contenedor se inicie.