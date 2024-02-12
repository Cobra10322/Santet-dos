echo ""
clear
figlet -f digital "Auto-MSFDB"
echo ""
read -p'Domain Target : ' Tgt
echo ""
sudo nmap --script /usr/share/nmap/scripts/vulners.nse -sV -A $Tgt -d -oX Output/$Tgt.xml
sleep 1
echo ""
searchsploit --nmap Output/$Tgt.xml
sudo rm -rf Output/$Tgt.xml
