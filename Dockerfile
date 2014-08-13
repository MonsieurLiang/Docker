# DOCKERFILE

# basic image openSUSE 13.1, we use this repository here main/opensuse
FROM main/opensuse

# refresh repository 
# --gpg-auto-import-keysl : if new repository signing key is found, trust and import it automatically
#                      -n : --non-interactive 
RUN zypper --gpg-auto-import-keys -n refresh

# install apache2
RUN zypper -n in apache2

# install php5 apache2-mod_php5 php5-pgsql php5-mysql php5-zlib
# apache2-mod_php5: for "LoadModule mod_php5" in apache configuration
#       php5-pgsql: for working with PostgreSQL
#       php5-mysql: for working with MySQL
#        php5-zlib: for Joomla
RUN zypper -n in php5 apache2-mod_php5 php5-pgsql php5-mysql php5-zlib

# install unzip
RUN zypper -n in unzip

# add joomla installation package to /srv/www/htdocs/
ADD /Joomla_3.3.3-Stable-Full_Package.zip /srv/www/htdocs/

# unzip the joomla installation package into /srv/www/htdocs/
RUN unzip /srv/www/htdocs/Joomla_3.3.3-Stable-Full_Package.zip -d /srv/www/htdocs/

# change file owner and group
RUN chown -R wwwrun:www /srv/www/htdocs/

# set the default command
CMD ["/bin/bash","-c","/etc/init.d/apache2 start; bash"]


