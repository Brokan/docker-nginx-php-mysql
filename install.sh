#!/bin/bash/
git clone https://github.com/Brokan/pocket_calculator.git
cp ~./pocket_calculator/.env.example ~./pocket_calculator/.env
~./pocket_calculator/composer install --no-interaction
~./pocket_calculator/php artisan migrate