# DOCKERFILE

# basic image openSUSE 13.1, we use this repository here main/opensuse
FROM main/opensuse

# refresh repository 
# --gpg-auto-import-keysl : if new repository signing key is found, trust and import it automatically
#                      -n : --non-interactive 
RUN zypper --gpg-auto-import-keys -n refresh

# install mariadb
RUN zypper -n install mariadb

# install rcc-runtime
RUN zypper -n install rcc-runtime

# add initialization file to the container
# this file can do some jobs like create a new database, a new user in mariadb, change the configuration, etc
# the position of init.sh is the same level with this Dockerfile
# init.sh will be copied into the image /root/init.sh
ADD ./init.sh /root/

# change the initialization file to executable
RUN chmod 755 /root/init.sh

# execute the initialization file
RUN /root/init.sh

# set the default command
CMD ["/bin/bash","-c","/usr/sbin/rcmysql start; bash"]
