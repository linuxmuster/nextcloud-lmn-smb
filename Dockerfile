FROM nextcloud:32.0.2
RUN apt-get update
RUN apt-get -y install smbclient libsmbclient-dev libbz2-dev libgmp-dev libicu-dev sudo libmagickcore-7.q16-10-extra graphicsmagick ffmpeg
RUN pear install Net_Sieve
RUN pecl install smbclient
RUN docker-php-ext-enable smbclient
RUN docker-php-ext-install bz2
RUN docker-php-ext-install intl
RUN docker-php-ext-install gmp
RUN apachectl restart
RUN rm -rf /var/lib/apt/lists/*
