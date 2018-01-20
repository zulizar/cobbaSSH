#!/bin/bash
echo "-------------------------------"
echo "USERNAME          EXP DATE     "
echo "-------------------------------"
while read expired
do
        AKUN="$(echo $expired | cut -d: -f1)"
        ID="$(echo $expired | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 1000 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
        fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "-------------------------------"
echo "Jumlah akun: $JUMLAH user"
echo "-------------------------------"
echo -e "ALL SUPPORTED by Yonatan Kanu as THORN SSH"
echo -e "Contact Person : https://www.facebook.com/kanu.nugraha"
echo -e "WhatsApp       : 085707136028"
echo -e "Website        : http://yonatankanu.blogspot.co.id"
echo -e "Website        : http://yonatankanu.wordpress.com/"

echo -e ""
