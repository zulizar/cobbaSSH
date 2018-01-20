#!/bin/bash
#Cie Trialan Cie......create trial user SSH
#yg akan expired setelah 1 hari
#modified by Yonatan Kanu as THORN SSH

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M thornssh-$Login
echo -e "$Pass\n$Pass\n"|passwd thornssh-$Login &> /dev/null
echo -e ""
echo -e "------------------------------- MEMBUAT AKUN SSH -------------------------------"
echo -e "                         ALL SUPPORTED BY RUMAHSSH SSH                     "


echo -e "===YAH TRIALAN MANG :V==="
echo -e "====TRIAL SSH account===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH: 22,80"
echo -e "Port Dropbear: 143,443"
echo -e "Squid: 8080,3128"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
echo -e "Username: $Login"
echo -e "Password: $Pass\n"
echo -e "=========================="
echo -e "ALL SUPPORTED by Yonatan Kanu as Rumah SSH"


echo -e ""
