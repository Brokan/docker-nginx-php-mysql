FROM php:7.3-fpm

# Install libraries
RUN apt-get update && apt-get install -y --no-install-recommends apt-utils\
    git \
    zip unzip \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    zlib1g-dev \
    nano \
	mc \
    && docker-php-ext-install -j$(nproc) iconv zip mysqli pdo pdo_mysql xdebug \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

#iconv zip mysqli pdo pdo_mysql
#curl cli iconv zip xml mysqli pdo pdo_mysql sqlite3 json mbstring soap xdebug tidy pear

# Install composer
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls --install-dir=/usr/local/bin --filename=composer

# Install node
#RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
#RUN apt-get install nodejs
#RUN node -v
#RUN npm -v


# Create the project directory
# WORKDIR /var/www
# Copy the whole project to your workdir
# RUN install.sh
