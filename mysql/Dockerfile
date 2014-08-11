# DOCKERFILE

FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in mariadb

ADD init_mysql.sh /root/

RUN chmod 744 /root/init_mysql.sh

RUN /root/init_mysql.sh

ADD start_mysql.sh /root/

RUN chmod 744 /root/start_mysql.sh

ENTRYPOINT ["/root/start_mysql.sh"]

CMD ["bash"]
