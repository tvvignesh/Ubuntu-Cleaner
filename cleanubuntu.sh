#!/bin/bash
# Ubuntu Cleaner Script by T.V.Vignesh

echo "This script is meant to clean your Ubuntu filesystem of unwanted files and directories thus freeing up space";
echo "Files affected: Logs,Old and unneeded dependencies";
cd /var/log
echo "Removing log archives";
sudo rm -f *.gz
echo "Emptying lastlog";
cat /dev/null > lastlog
echo "Emptying wtmp";
cat /dev/null > wtmp
echo "Emptying dpkg.log";
cat /dev/null > dpkg.log
echo "Emptying kern.log";
cat /dev/null > kern.log
echo "Emptying syslog";
cat /dev/null > syslog
echo "Removing Old packages";
sudo apt-get autoremove
echo "Removing temporary files";
apt-get autoclean
apt-get clean
sudo rm -rf /tmp/*
