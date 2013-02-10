#/bin/bash
echo "$HOSTNAME has `dpkg -l | wc -l` packages"
echo "Server booted up"
sleep 0.4
echo "installing apache Web Server....."
sudo apt-get -y install apache2
