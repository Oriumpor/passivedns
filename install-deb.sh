#/bin/sh
giturl=https://github.com/gamelinux/passivedns
apt-get install libpcap-dev libldns-dev git
cd /tmp
git clone $giturl
cd passivedns/src
make
cp passivedns /usr/bin/
cp ../etc/init.d/passivedns-debian /etc/init.d/passivedns
cp ../etc/default/passivedns-debian /etc/default/passivedns
chmod 755 /etc/init.d/passivedns
update-rc.d passivedns default
service passivedns start
   
