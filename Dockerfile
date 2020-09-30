From nextcloud:latest
Run apt-get update
Run apt-get -y install smbclient libsmbclient-dev libgmp-dev libicu-dev sudo
Run pecl install smbclient
Run docker-php-ext-enable smbclient
Run docker-php-ext-install intl
Run docker-php-ext-install gmp
Run apachectl restart
Run rm -rf /var/lib/apt/lists/*
