FROM nginx:stable-alpine

RUN apt-get update && \
    apt-get install -y git && \
	apt-get install -y php7.2 php7.2-common php7.2-cli php7.2-fpm && \
	apt-get -y autoremove && \
    apt-get clean && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


COPY composer.json ./
