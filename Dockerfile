FROM php:7.2.9-fpm
RUN apt-get update -y && apt-get install -y openssl zip unzip git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN git clone https://github.com/Laradock/laradock.git
RUN cp env-example .env
CMD php artisan serve --host=0.0.0.0 --port=80
EXPOSE 80

