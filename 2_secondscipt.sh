#!/bin/bash


#####################################
###  Installing the Dependencies  ###

sudo yum install httpd wget unzip -y 
echo "######################################"
echo

###    Starting the Services     ###
service httpd start
sudo systemctl enable httpd
echo "#######################################"
echo

###    Creating temp Directory   ###
echo
echo "Starting artifact Deployment"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo "#######################################"
echo

wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip 
unzip 2117_infinite_loop 
sudo cp -r 2117_infinite_loop/* /var/www/html/
echo "#######################################"
echo

### Restarting Service         ###
systemctl restart httpd
echo "#######################################"
echo

### Cleaning Up Temp File

rm -rf /tmp/webfiles
echo "######################################"
echo

sudo systemctl status httpd
ls /var/www/html/

