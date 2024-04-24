sudo apt-get update
sudo apt install apache2 mariadb-server php php-mysql php-ldap php-cli php-soap php-json graphviz php-xml php-gd php-zip php-fpm php-mbstring acl

 

wget https://sourceforge.net/projects/teemip/files/latest/download -O /tmp/teemip.zip
sudo unzip /tmp/teemip.zip "web/*" -d /var/www/html/teemip
sudo mv /var/www/html/teemip/web/*  /var/www/html/teemip
sudo rmdir /var/www/html/teemip/web
sudo setfacl -dR -m u:"www-data":rwX /var/www/html/teemip/data /var/www/html/teemip/log
sudo setfacl -R -m u:"www-data":rwX /var/www/html/teemip/data /var/www/html/teemip/log
sudo mkdir /var/www/html/teemip/conf /var/www/html/teemip/env-production /var/www/html/teemip/env-production-build
sudo chown www-data: /var/www/html/teemip/conf /var/www/html/teemip/env-production /var/www/html/teemip/env-production-build
