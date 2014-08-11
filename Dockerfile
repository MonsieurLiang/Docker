# DOCKERFILE

FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in apache2

RUN zypper -n in php5 apache2-mod_php5 php5-pgsql php5-mysql php5-zlib

RUN zypper -n in unzip

ADD /Joomla_3.3.3-Stable-Full_Package.zip /srv/www/htdocs/

RUN unzip /srv/www/htdocs/Joomla_3.3.3-Stable-Full_Package.zip -d /srv/www/htdocs/

RUN chown -R wwwrun:www /srv/www/htdocs/

ADD /start_apache.sh /root/

RUN chmod 744 /root/start_apache.sh

ENTRYPOINT ["/root/start_apache.sh"]

CMD ["bash"]

