RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
RUN composer global require "laravel/installer"
RUN laravel new /var/www/html/shirtsndruck 

EXPOSE 443 80

