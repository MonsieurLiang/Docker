# DOCKERFILE

FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in mariadb

RUN zypper -n in rcc-runtime

ADD init_mysql.sh /root/

RUN chmod 744 /root/init_mysql.sh

RUN /root/init_mysql.sh

#ADD start_mysql.sh /root/

#RUN chmod 744 /root/start_mysql.sh

#ENTRYPOINT ["/usr/sbin/rcmysql"]

CMD ["/usr/sbin/rcmysql start; bash"]
