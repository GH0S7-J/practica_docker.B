# Utiliza la imagen base de PHP con Apache versión 7.4
FROM php:7.4-apache

# Instala las extensiones necesarias para PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia la configuración de Apache desde el directorio local ./src al directorio /var/www/html/ dentro del contenedor
COPY ./src /var/www/html/

# Habilita el módulo de reescritura de Apache
RUN a2enmod rewrite
