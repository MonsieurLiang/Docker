# DOCKERFILE

FROM main/opensuse

MAINTAINER Liangwei Liang <liangwei.liang@hotmail.com>

ENV PS1 \u@\h:\w>

RUN zypper --gpg-auto-import-keys -n in mariadb

CMD ["bash"]
