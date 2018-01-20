#!/bin/bash
#Script auto create user SSH

echo -e "------------------------------- MEMBUAT AKUN SSH -------------------------------"
echo -e "                         ALL SUPPORTED BY THORN SSH                     "
echo -e "           https://www.facebook.com/groups/1515866931798557/?ref=bookmarks"
echo -e "  DEVELOPED BY Yonatan Kanu (https://www.facebook.com/kanu.nugraha , 085707136028)"

echo -e ""
echo -e ""
echo -e ""
echo -e ""

read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=`dig +short myip.opendns.com @resolver1.opendns.com`
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M thornssh-$Login
exp="$(chage -l thornssh-$Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd thornssh-$Login &> /dev/null
echo -e ""
echo -e "====Informasi SSH account===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH: 22,143"
echo -e "Port Dropbear: 80,109,110443"
echo -e "Squid: 8080,3128"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
echo -e "Username: thornssh-$Login "
echo -e "Password: $Pass"
echo -e "-----------------------------"
echo -e "Aktif Sampai: $exp"
echo -e "============================="
echo -e "CIE USERNYA NAMBAH 1 SEMOGA NAMBAH TERUS YAH :v"
echo -e "ALL SUPPORTED by Yonatan Kanu as THORN SSH"
echo -e "Contact Person : https://www.facebook.com/kanu.nugraha"
echo -e "WhatsApp       : 085707136028"
echo -e "Website        : http://yonatankanu.blogspot.co.id"
echo -e "Website        : http://yonatankanu.wordpress.com/"

echo -e ""
