FROM nginx:stable-alpine

RUN apt-get update && \
    apt-get install -y git zip unzip && \
	apt-get install php7.2 && \
	apt-get install curl && \
    apt-get -y autoremove && \
    apt-get clean && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


COPY composer.json ./
