#!/bin/bash

#What we have to do is: Install Gnome and change runlevel to boot to graphical interface

dnf group list

dnf groupinstall workstation

systemctl set-default graphical.target

systemctl isolate graphical.target

#all these commands must be run as root or with sudo instead

#original post in https://linuxconfig.org/install-gnome-on-redhat-8