From debian:stretch

#Initial install
Run apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
		gnupg \
		apt-transport-https \
		ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

# install base system
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
		acl \
		aptitude \
		curl \
		dnsutils \
		git \
		libyaml-dev \
		htop \
		nmon \
		ntp \
		sudo \
		vim \
		wget \
		net-tools\
	&& rm -rf /var/lib/apt/lists/*

# Install postgresql client
ENV POSTGRESQL_VERSION 10
RUN curl -s -L https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
    && echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" > /etc/apt/sources.list.d/pgdg.list \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
        postgresql-client-$POSTGRESQL_VERSION \
    && rm -rf /var/lib/apt/lists/*

# Install node.js
ENV NODE_VERSION node_10.x
RUN curl -s -L https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - \
	&& echo "deb https://deb.nodesource.com/$NODE_VERSION stretch main" > /etc/apt/sources.list.d/nodesource.list \
 	&& apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
	   nodejs \
	&& rm -rf /var/lib/apt/lists/*

# install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
	&& echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
	&& apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
		yarn \
	&& rm -rf /var/lib/apt/lists/*
	

	
# Install PHP from sury.org packages
ENV PHP_VERSION 7.2
RUN curl -s -L https://packages.sury.org/php/apt.gpg | apt-key add - \
    && echo "deb https://packages.sury.org/php/ stretch main" > /etc/apt/sources.list.d/sury_php.list \
    && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
        php${PHP_VERSION}-common \
        php${PHP_VERSION}-fpm \
        php${PHP_VERSION}-cli \
        php${PHP_VERSION}-dev \
        php${PHP_VERSION}-apcu \
        php${PHP_VERSION}-curl \
        php${PHP_VERSION}-enchant \
        php${PHP_VERSION}-gd \
        php${PHP_VERSION}-gmp \
        php${PHP_VERSION}-imagick \
        php${PHP_VERSION}-intl \
        php${PHP_VERSION}-json \
        php${PHP_VERSION}-memcache \
        php${PHP_VERSION}-memcached \
        php${PHP_VERSION}-odbc \
        php${PHP_VERSION}-pgsql \
        php${PHP_VERSION}-sqlite3 \
        php${PHP_VERSION}-tidy \
        php${PHP_VERSION}-xmlrpc \
        php${PHP_VERSION}-xsl \
        php${PHP_VERSION}-uuid \
        php${PHP_VERSION}-bcmath \
        php${PHP_VERSION}-opcache \
        php${PHP_VERSION}-zip \
        php${PHP_VERSION}-mbstring \
        php-redis \
        php-pear \
        php-soap \
    && rm -rf /var/lib/apt/lists/*
COPY files/php-fpm.conf /etc/php/${PHP_VERSION}/fpm/php-fpm.conf
COPY files/php.ini /etc/php/${PHP_VERSION}/fpm/php.ini
COPY files/php.ini /etc/php/${PHP_VERSION}/cli/php.ini

# Install composer
ENV COMPOSER_VERSION 1.6.5
RUN curl -L -s -o /usr/local/bin/composer https://getcomposer.org/download/$COMPOSER_VERSION/composer.phar \
    && chmod a+x /usr/local/bin/composer
# Setup entry script
COPY docker-entrypoint.sh /usr/local/bin
RUN chmod a+x /usr/local/bin/docker-entrypoint.sh
RUN chmod a+rw /etc/passwd && chmod a+rw /etc/group
RUN echo "bazingar ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/nopwsudo
ENTRYPOINT ["docker-entrypoint.sh"]
WORKDIR /app
	
