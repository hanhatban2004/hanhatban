#!/data/data/com.termux/files/usr/bin/bash

# 1. Đổi nguồn tải sang Mirror của Tsinghua (như bạn muốn)
echo "deb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-main stable main" > $PREFIX/etc/apt/sources.list

# 2. Cập nhật hệ thống
apt update -y
apt upgrade -y -o Dpkg::Options::="--force-confold"

# 3. Cài đặt Java 17 và Ant (Đã bỏ maven)
pkg install openjdk-17 ant procps termux-auth -y

# 4. Cấp quyền bộ nhớ
termux-setup-storage

echo "----------------------------------------"
echo "Đã cài đặt xong Java 17 và Apache Ant!"
echo "Gõ 'ant -version' để kiểm tra."
echo "----------------------------------------"
