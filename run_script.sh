#!/bin/bin/bash

apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install apache2 php5 mysql-server m4 make dh-autoreconf pkg-config git vim libapache2-mod-php5 libmysqlclient-dev php5-mysql php5-cli php5-gd python python-mysqldb libssl-dev libcurl4-openssl-dev --yes
useradd boincadm
usermod -a -G boincadm www-data
mkdir /data
mkdir /data/projects
chown -R boincadm. /data
cd /data
git clone http://boinc.berkeley.edu/git/boinc-v2.git boinc-src
cd /data/boinc-src
./_autosetup
./configure --disable-client --disable-manager
make
a2enmod cgi
chmod +x /data/start_script.sh
rm /run_script.sh
