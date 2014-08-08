# DOCKERFILE

FROM main/opensuse

MAINTAINER Liangwei Liang <liangwei.liang@hotmail.com>

ENV PS1 \u@\h:\w>

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in apache2

RUN zypper -n in php5

RUN zypper -n in apache2-mod_php5

RUN zypper -n in php5-pgsql

RUN zypper -n in php5-mysql

RUN zypper -n in mariadb

CMD ["bash"]
