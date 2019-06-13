FROM phpplatform/php-apache-xdebug-composer
WORKDIR /var/www/html
COPY ./app /var/www/html

RUN apt-get update
RUN apt-get upgrade -y
RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN a2enmod rewrite

ENV XDEBUG_CONFIG="idekey=PHPSTORM remote_host=docker.for.mac.host.internal default_enable=0 remote_enable=1 remote_autostart=0 remote_connect_back=0 profiler_enable=0"
RUN php /home/app/index.php
