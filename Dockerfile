From nextcloud:25.0.2
Run apt-get update
Run apt-get -y install smbclient libsmbclient-dev libgmp-dev libicu-dev sudo libmagickcore-6.q16-3-extra graphicsmagick ffmpeg
Run pear install Net_Sieve
Run pecl install smbclient
Run docker-php-ext-enable smbclient
Run docker-php-ext-install intl
Run docker-php-ext-install gmp
Run apachectl restart
Run rm -rf /var/lib/apt/lists/*
