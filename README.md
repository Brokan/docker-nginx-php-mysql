# Docker example
Example of docker configuration with PHP, Nginx, MySQL and Laravel project installation.

# Installation

1. Run docker compose
<p>docker-compose -up -d</p>

2. Check do all three containers exist.
<p>docker ps</p>

3. Get into docker (image with php) by command:
<p>docker exec -it docker-nginx-php-mysql_php_1 bash</p>

4. Run script to get from GIT Laravel project and setup it.
<p>bash install.sh</p>


# Configuration

For Nginx config check /images/nginx
For PHP check /images/php-fpm

# MySQL Host
If PHP project is not connecting to Database, get mysql container IP.
<p>docker inspect docker-nginx-php-mysql_mysql_1<p>
Search for something like this:
<p>"IPAddress": "172.18.0.2",</p>
In project .env file set
<p>DB_HOST=172.X.X.X</p>
Than run (inside docker project file) 
<p>php artisan migrate</p>

# Test

Checl browser 
http://localhost:8080/
http://pocketcalculator.local/