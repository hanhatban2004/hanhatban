#!/data/data/com.termux/files/usr/bin/bash

echo "deb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-main stable main" > $PREFIX/etc/apt/sources.list

apt update -y
apt upgrade -y -o Dpkg::Options::="--force-confold"

pkg install openjdk-17 maven procps termux-auth -y

termux-setup-storage