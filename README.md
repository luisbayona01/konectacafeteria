# Konecta Cafetería - Guía de Ejecución

Esta guía te ayudará a configurar y ejecutar la aplicación "Konecta Cafetería" en tu entorno local utilizando PostgreSQL como motor de base de datos.

## Requisitos Previos

Asegúrate de tener instalados los siguientes requisitos antes de continuar:

- [PHP](https://www.php.net/) (versión 8.1 o superior)
- [Composer](https://getcomposer.org/)
- [PostgreSQL](https://www.postgresql.org/)
- [Node.js](https://nodejs.org/) y [npm](https://www.npmjs.com/)

## Pasos para la Ejecución

1. **Clona el Repositorio**

   Abre tu terminal y clona el repositorio desde GitHub:

  
 git clone https://github.com/luisbayona01/konectacafeteria.git
 Instala las Dependencias de PHP

Navega al directorio del proyecto y ejecuta el siguiente comando para instalar las dependencias de PHP (Laravel):


composer install
Configura el Archivo .env

Copia el archivo .env.example y renómbralo a .env. Configura las variables de entorno, como la conexión a la base de datos PostgreSQL y las claves de seguridad.


cp .env.example .env
Luego, abre el archivo .env y actualiza las siguientes líneas con la información de tu base de datos PostgreSQL:


DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=nombre_de_tu_base_de_datos
DB_USERNAME=usuario_de_postgres
DB_PASSWORD=contraseña_de_postgres
Ejecuta las Migraciones y los Seeders

Ejecuta las migraciones para crear las tablas de la base de datos y los seeders para llenarla con datos de prueba:


php artisan migrate:refresh --path=database/migrations --seed
O bien, si quieren  usar  el  varchivo de respaldo llamado konecta.sql, puedes restaurar la base de datos desde ese archivo.

Inicia el Servidor de Desarrollo

Inicia el servidor de desarrollo de Laravel:


php artisan serve
Esto iniciará la aplicación en http://localhost:8000.

Accede a la Aplicación

Abre tu navegador web y accede a la aplicación:

http://localhost:8000

Consultas SQL

Las consultas SQL solicitadas en la  prueba  se encuentran en el archivo consultas.sql.

Acceso Público

Si deseas ver la aplicación ejecutándose públicamente, puedes acceder a esta URL:

https://6032-186-28-51-44.ngrok-free.app/