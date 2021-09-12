#!/bin/bash/

#Get project from git
git clone https://github.com/Brokan/pocket_calculator.git
#Go to project folder
cd pocket_calculator
#Create environment file
cp .env.example .env
#Install composer parts
composer install --no-interaction
#Set rights for logs and other storages.
chmod -R 777 storage
#Install Database tables
php artisan migrate
#Go back to /var/www
cd ..