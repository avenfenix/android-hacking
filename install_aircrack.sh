#!/bin/bash

apt update && apt upgrade -y
apt install wget
apt install libc++ libnl libpcap libsqlite
ARCHITECTURE=$(uname -m)

if [ARCHITECTURE == "aarch64"]; then
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-aarch64/aircrack-ng_3_1.7_aarch64.deb
    dpkg -i aircrack-ng_3_1.7_aarch64.deb
else if [ARCHITECTURE == "arm"]; then
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-arm/aircrack-ng_3_1.7_arm.deb
    dpkg -i aircrack-ng_3_1.7_arm.deb
else if [ARCHITECTURE == "i686"]; then
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-i686/aircrack-ng_3_1.7_i686.deb
    dpkg -i aircrack-ng_3_1.7_i686.deb
else if [ARCHITECTURE == "x86_64"]; then
    wget https://raw.githubusercontent.com/pitube08642/aircrack-ng-for-termux/main/dists/termux/aircrack-ng/binary-x86_64/aircrack-ng_3_1.7_x86_64.deb
    dpkg -i aircrack-ng_3_1.7_x86_64.deb
