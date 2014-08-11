# DOCKERFILE

FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in apache2

RUN zypper -n in php5 apache2-mod_php5 php5-pgsql php5-mysql

RUN zypper -n in unzip

ADD /Joomla_3.3.3-Stable-Full_Package.zip /srv/www/htdocs/

RUN unzip /srv/www/htdocs/Joomla_3.3.3-Stable-Full_Package.zip

CMD ["/etc/init.d/apache2", "start"]


FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in mariadb

CMD ["/etc/init.d/mysql", "start"]
