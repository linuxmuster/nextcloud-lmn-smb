FROM nextcloud:30.0.0
RUN apt-get update
RUN apt-get -y install smbclient libsmbclient-dev libbz2-dev libgmp-dev libicu-dev sudo libmagickcore-6.q16-3-extra graphicsmagick ffmpeg
RUN pear install Net_Sieve
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
RUN docker-php-ext-install bz2
RUN docker-php-ext-install intl
RUN docker-php-ext-install gmp
RUN apachectl restart
RUN rm -rf /var/lib/apt/lists/*
