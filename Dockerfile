# DOCKERFILE

FROM main/opensuse

MAINTAINER Liangwei Liang <liangwei.liang@hotmail.com>

ENV PS1 \u@\h:\w>

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in apache2

RUN zypper -n in php5 apache2-mod_php5 php5-pgsql php5-mysql

RUN zypper -n in mariadb

RUN groupadd mysql; useradd -g mysql mysql

ADD ./start.sh /etc/init.d/start.sh

RUN chmod 744 /etc/init.d/start.sh

ENTRYPOINT ["/etc/init.d/start.sh"]

CMD ["bash"]
