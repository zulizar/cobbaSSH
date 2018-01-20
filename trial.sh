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
echo -e "                         ALL SUPPORTED BY THORN SSH                     "
echo -e "           https://www.facebook.com/groups/1515866931798557/?ref=bookmarks"
echo -e "  DEVELOPED BY Yonatan Kanu (https://www.facebook.com/kanu.nugraha , 085707136028)"

echo -e "===YAH TRIALAN MANG :V==="
echo -e "====TRIAL SSH account===="
echo -e "Host: $IP" 
echo -e "Port OpenSSH: 22,80"
echo -e "Port Dropbear: 143,443"
echo -e "Squid: 8080,3128"
echo -e "Config OpenVPN (TCP 1194): http://$IP:81/client.ovpn"
echo -e "Username: thornssh-$Login"
echo -e "Password: $Pass\n"
echo -e "=========================="
echo -e "ALL SUPPORTED by Yonatan Kanu as THORN SSH"
echo -e "Contact Person : https://www.facebook.com/kanu.nugraha"
echo -e "WhatsApp       : 085707136028"
echo -e "Website        : http://yonatankanu.blogspot.co.id"
echo -e "Website        : http://yonatankanu.wordpress.com/"

echo -e ""
