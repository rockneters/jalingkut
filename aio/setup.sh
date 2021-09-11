if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
#MYIP=$(wget -qO- icanhazip.com);
#echo "Checking VPS"
#IZIN=$( curl http://ipinfo.io/ip | grep $MYIP )
#if [ $MYIP = $IZIN ]; then
#echo -e "${green}Permintaan Diterima...${NC}"
#else
#echo -e "${red}Permintaan Ditolak!${NC}";
#echo "Hanya untuk pengguna terdaftar"
#fi
mkdir /etc/v2ray
mkdir /var/lib/crot-script;
clear
echo "Masukkan Domain Anda, Jika Anda Tidak Memiliki Domain Klik Enter"
echo "Ketikkan Perintah addhost setelah proses instalasi Script Selesai"
read -p "Hostname / Domain: " host
echo "IP=$host" >> /var/lib/crot-script/ipvps.conf
echo "$host" >> /etc/v2ray/domain
#wget https://github.com/${GitUser}/
GitUser="rockneters"
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/shadowsocksobfs.sh && chmod +x shadowsocksobfs.sh && screen -S ss ./shadowsocksobfs.sh
wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
#wget https://raw.githubusercontent.com/${GitUser}/jalingkut/aio/install/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
#rm -f /root/ssh-vpn.sh
rm -f /root/websocket.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ssr.sh
rm -f /root/shadowsocksobfs.sh
rm -f /root/ins-vt.sh
rm -f /root/go.sh
rm -f /root/ipsec.sh
history -c
clear
echo " "
echo "Installation has been completed!!"
echo " "
#echo " Reboot 10 Sec"
#sleep 5s
#reboot
