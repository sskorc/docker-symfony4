FROM php:7.3

ADD composer-install.sh composer-install.sh

RUN apt-get update \
    && apt-get install -y wget git \
    && chmod u+x composer-install.sh \
    && ./composer-install.sh \
    && rm composer-install.sh \
    && mv composer.phar /usr/bin/composer \
    && wget https://get.symfony.com/cli/installer -O - | bash \
    && mv /root/.symfony/bin/symfony /usr/local/bin/symfony

WORKDIR /root/app
