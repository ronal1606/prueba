# Usa una imagen base de Nginx, el servidor web más simple.
FROM nginx:stable-alpine

# Copia los archivos de tu repositorio (incluyendo el index.html)
# al directorio de contenido estático de Nginx.
COPY . /usr/share/nginx/html

# Indica que el servicio escucha en el puerto 80
EXPOSE 80

# Inicia el servidor Nginx
CMD ["nginx", "-g", "daemon off;"]