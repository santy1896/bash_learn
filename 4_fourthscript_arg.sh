#!/bin/bash

### VARIABLE DECLARATION ###

PACKAGE="unzip httpd wget"
SVC="httpd"
#URL=https://templatemo.com/tm-zip-files-2020/templatemo_520_highway.zip
#ARTIFACT_NAME="templatemo_520_highway"
TEMP_DIR=/tmp/webfiles

#####################################
###  Installing the Dependencies  ###

sudo yum install $PACKAGE -y
echo "######################################"
echo

###    Starting the Services     ###
service start $SVC
systemctl enable  $SVC
echo "#######################################"
echo

###    Creating temp Directory   ###
echo
echo "Starting artifact Deployment"
mkdir -p $TEMP_DIR
cd $TEMP_DIR
echo "#######################################"
echo

wget $1
unzip $2
sudo cp -r $2/* /var/www/html/
echo "#######################################"
echo

### Restarting Service         ###
systemctl restart httpd
echo "#######################################"
echo

### Cleaning Up Temp File

rm -rf $TEMP_DIR
echo "######################################"
echo

sudo systemctl status $SVC
ls /var/www/html/
