#!/bin/bash

#nmcli allows the network manager daemon to be used without GUI 

#check network manager status
nmcli -t -f RUNNING general

#get a general status
nmcli general

#display all system's available devices
nmcli dev status

#list all active connection
nmcli con show

#display information about ethernet connection
nmcli con show nameInterface

#change automatically connect directive
nmcli con mod nameInterface connection.autoconnect yes

nmcli con mod nameInterface connection.autoconnect no 

#verify changes
cat /etc/sysconfig/network-scripts/ifcfg-nameInterface | grep ONBOOT

#For more information visit the original post in https://www.howtoforge.com/20-nmcli-command-examples-centos-8/
