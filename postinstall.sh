#!/bin/bash
sudo mysql < ./SQL_Setup.sql
cp /usr/local/etc/kea/kea-dhcp4.conf /usr/local/etc/kea/kea-dhcp4.defaultconf
cp ./kea-dhcp4.conf /usr/local/etc/kea/
