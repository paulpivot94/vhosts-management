#!/bin/bash
echo "Creating Virtual Host"
cd /etc/apache2/sites-available

cat <<EOF >> "$1.conf"
<VirtualHost *:80>
    ServerAdmin webmaster@$1.localhost
    ServerName $1.localhost
    ServerAlias www.$1.localhost
    DocumentRoot "/var/www/html/$1"
    
    <Directory /var/www/html/$1>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Order allow,deny
        allow from all
    </Directory>
    
    <FilesMatch \.php$>
        # For Apache version 2.4.10 and above, use SetHandler to run PHP as a fastCGI process server
        SetHandler "proxy:unix:/run/php/php8.1-fpm.sock|fcgi://localhost"
    </FilesMatch>

    ErrorLog ${APACHE_LOG_DIR}/$1_error.log
    CustomLog ${APACHE_LOG_DIR}/$1_access.log combined
</VirtualHost>
EOF

mkdir "/var/www/html/$1"
cd /etc/apache2/sites-enabled
ln -s "/etc/apache2/sites-available/$1.conf" "$1.conf"
echo "Editing /etc/hosts"

cat <<EOF >> "/etc/hosts"
127.0.0.1       $1.localhost
EOF

echo "Set permissions"
chmod 0777 -R "/var/www/html/$1"
echo "Restarting Apache2"
/etc/init.d/apache2 restart
echo "Finished!"
echo "Local address: /var/www/html/$1"
echo "Web address: http://$1.localhost"
