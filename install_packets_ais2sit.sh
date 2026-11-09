#!/bin/sh
# ais2sitronics

# Создание папки для скачивания, если она отсутствует
DOWNLOAD_DIR="/root/ais2sit_packets_download"
mkdir -p "$DOWNLOAD_DIR"

echo "=== Скачивание и первоначальная установка wget ==="

# 1. Скачивание первого пакета wget встроенным wget из BusyBox
if [ ! -f "$DOWNLOAD_DIR/wget_1.16.3-1_ar71xx.ipk" ]; then
    echo "Скачивание wget_1.16.3-1_ar71xx.ipk..."
    wget -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/packages/wget_1.16.3-1_ar71xx.ipk"	                         
else
    echo "Файл wget_1.16.3-1_ar71xx.ipk уже скачан."
fi

# Установка wget сразу после скачивания с подтверждением
printf "\nХотите выполнить команду: opkg install wget_1.16.3-1_ar71xx.ipk? (y/n): "
read -r response
if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
    opkg install "$DOWNLOAD_DIR/wget_1.16.3-1_ar71xx.ipk"
    echo "check_certificate = off" >> /etc/wgetrc
    echo "Опция check_certificate = off успешно добавлена в /etc/wgetrc"
else
    echo "Установка wget пропущена. Дальнейшие загрузки с опцией -4 могут не работать, если встроенный wget её не поддерживает."
fi

echo "\n=== Скачивание оставшихся пакетов с опцией -4 ==="

if [ ! -f "$DOWNLOAD_DIR/libpcre_8.38-1_ar71xx.ipk" ]; then
    echo "Скачивание libpcre_8.38-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/packages/libpcre_8.38-1_ar71xx.ipk"
else
    echo "Файл libpcre_8.38-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/libopenssl_1.0.2g-1_ar71xx.ipk" ]; then
    echo "Скачивание libopenssl_1.0.2g-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/libopenssl_1.0.2g-1_ar71xx.ipk"
else
    echo "Файл libopenssl_1.0.2g-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/socat_1.7.3.0-1_ar71xx.ipk" ]; then
    echo "Скачивание socat_1.7.3.0-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/packages/socat_1.7.3.0-1_ar71xx.ipk"
else
    echo "Файл socat_1.7.3.0-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/coreutils-stty_8.23-1_ar71xx.ipk" ]; then
    echo "Скачивание coreutils-stty_8.23-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/packages/coreutils-stty_8.23-1_ar71xx.ipk"
else
    echo "Файл coreutils-stty_8.23-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/libpcap_1.5.3-1_ar71xx.ipk" ]; then
    echo "Скачивание libpcap_1.5.3-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/libpcap_1.5.3-1_ar71xx.ipk"
else
    echo "Файл libpcap_1.5.3-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/tcpdump_4.5.1-4_ar71xx.ipk" ]; then
    echo "Скачивание tcpdump_4.5.1-4_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/tcpdump_4.5.1-4_ar71xx.ipk"
else
    echo "Файл tcpdump_4.5.1-4_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/libusb-1.0_1.0.19-1_ar71xx.ipk" ]; then
    echo "Скачивание libusb-1.0_1.0.19-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/libusb-1.0_1.0.19-1_ar71xx.ipk"
else
    echo "Файл libusb-1.0_1.0.19-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/usbutils_007-1_ar71xx.ipk" ]; then
    echo "Скачивание usbutils_007-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/usbutils_007-1_ar71xx.ipk"
else
    echo "Файл usbutils_007-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/liblzo_2.08-1_ar71xx.ipk" ]; then
    echo "Скачивание liblzo_2.08-1_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/liblzo_2.08-1_ar71xx.ipk"
else
    echo "Файл liblzo_2.08-1_ar71xx.ipk уже скачан."
fi

if [ ! -f "$DOWNLOAD_DIR/openvpn-openssl_2.3.6-5_ar71xx.ipk" ]; then
    echo "Скачивание openvpn-openssl_2.3.6-5_ar71xx.ipk..."
    wget -4 -P "$DOWNLOAD_DIR" "http://archive.openwrt.org/chaos_calmer/15.05/ar71xx/generic/packages/base/openvpn-openssl_2.3.6-5_ar71xx.ipk"
else
    echo "Файл openvpn-openssl_2.3.6-5_ar71xx.ipk уже скачан."
fi


echo "\n=== Установка оставшихся пакетов ==="

confirm_and_install() {
    local cmd="$1"
    local msg="$2"
    echo ""
    printf "Хотите выполнить команду: %s? (y/n): " "$msg"
    read -r response
    if [ "$response" = "y" ] || [ "$response" = "Y" ]; then
        eval "$cmd"
    else
        echo "Пропущено."
    fi
}

confirm_and_install 'opkg install "$DOWNLOAD_DIR/libpcre_8.38-1_ar71xx.ipk"' 'opkg install libpcre_8.38-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/libopenssl_1.0.2g-1_ar71xx.ipk"' 'opkg install libopenssl_1.0.2g-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/wget_1.16.3-1_ar71xx.ipk"' 'opkg install wget_1.16.3-1_ar71xx.ipk (повторно)'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/socat_1.7.3.0-1_ar71xx.ipk"' 'opkg install socat_1.7.3.0-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/coreutils-stty_8.23-1_ar71xx.ipk" --nodeps' 'opkg install coreutils-stty_8.23-1_ar71xx.ipk --nodeps'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/libpcap_1.5.3-1_ar71xx.ipk"' 'opkg install libpcap_1.5.3-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/tcpdump_4.5.1-4_ar71xx.ipk"' 'opkg install tcpdump_4.5.1-4_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/libusb-1.0_1.0.19-1_ar71xx.ipk"' 'opkg install libusb-1.0_1.0.19-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/usbutils_007-1_ar71xx.ipk"' 'opkg install usbutils_007-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/liblzo_2.08-1_ar71xx.ipk"' 'opkg install liblzo_2.08-1_ar71xx.ipk'
confirm_and_install 'opkg install "$DOWNLOAD_DIR/openvpn-openssl_2.3.6-5_ar71xx.ipk"' 'opkg install openvpn-openssl_2.3.6-5_ar71xx.ipk'

echo "\n=== Процесс завершен ==="
