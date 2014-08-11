# DOCKERFILE

FROM main/opensuse

RUN zypper --gpg-auto-import-keys -n refresh

RUN zypper -n in mariadb

CMD ["/etc/init.d/mysql", "start"]
