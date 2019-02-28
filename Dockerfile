FROM phpplatform/php-apache-xdebug-composer
WORKDIR /home
COPY ./app /home/app
ENV XDEBUG_CONFIG="idekey=PHPSTORM remote_host=docker.for.mac.host.internal default_enable=0 remote_enable=1 remote_autostart=0 remote_connect_back=0 profiler_enable=0"
RUN php /home/app/index.php
